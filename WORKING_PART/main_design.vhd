LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.all;
USE work.main_package.ALL;
ENTITY main_OSPF IS
	PORT (
		-- input packets
		-- valid_i will be 1 if packet_i is coming
		packet_in1 : IN std_logic_vector(7 DOWNTO 0);
		packet_in2 : IN std_logic_vector(7 DOWNTO 0);
		packet_in3 : IN std_logic_vector(7 DOWNTO 0);
		packet_in4 : IN std_logic_vector(7 DOWNTO 0);
		packet_in5 : IN std_logic_vector(7 DOWNTO 0);
		packet_in6 : IN std_logic_vector(7 DOWNTO 0);
		packet_in7 : IN std_logic_vector(7 DOWNTO 0);
		packet_in8 : IN std_logic_vector(7 DOWNTO 0);
		valid_in1 : IN std_logic;
		valid_in2 : IN std_logic;
		valid_in3 : IN std_logic;
		valid_in4 : IN std_logic;
		valid_in5 : IN std_logic;
		valid_in6 : IN std_logic;
		valid_in7 : IN std_logic;
		valid_in8 : IN std_logic;

		-- clocks to be decided according to needs
		clk : IN std_logic;
		-- clocks end here
		-- output packets
		gateway_ip : OUT ip_addr_array;
		gateway_node: OUT RAM_FOR_NEXTHOP;
		packet_out1 : OUT std_logic_vector(7 DOWNTO 0):="00000000";
		packet_out2 : OUT std_logic_vector(7 DOWNTO 0):="00000000";
		packet_out3 : OUT std_logic_vector(7 DOWNTO 0):="00000000";
		packet_out4 : OUT std_logic_vector(7 DOWNTO 0):="00000000";
		packet_out5 : OUT std_logic_vector(7 DOWNTO 0):="00000000";
		packet_out6 : OUT std_logic_vector(7 DOWNTO 0):="00000000";
		packet_out7 : OUT std_logic_vector(7 DOWNTO 0):="00000000";
		packet_out8 : OUT std_logic_vector(7 DOWNTO 0):="00000000";
		valid_out1 : OUT std_logic:='0';
		valid_out2 : OUT std_logic:='0';
		valid_out3 : OUT std_logic:='0';
		valid_out4 : OUT std_logic:='0';
		valid_out5 : OUT std_logic:='0';
		valid_out6 : OUT std_logic:='0';
		valid_out7 : OUT std_logic:='0';
		valid_out8 : OUT std_logic:='0');
END ENTITY;

ARCHITECTURE behavioural OF main_OSPF IS
	-- control signals
	signal control_dijkstra, control_graph: STD_LOGIC:= '0';
	-- status of packets on each interface
	SIGNAL hello_received1, hello_received2, hello_received3, hello_received4, hello_received5,
	hello_received6, hello_received7, hello_received8 : std_logic := '0';

	SIGNAL dd_received1, dd_received2, dd_received3, dd_received4, dd_received5,
	dd_received6, dd_received7, dd_received8 : std_logic := '0';

	SIGNAL dd1, dd2, dd3, dd4, dd5, dd6, dd7, dd8 : databaseDescription;
	SIGNAL graph, graph1, graph2, graph3, graph4, graph5, graph6, graph7, graph8 : RAM_FOR_GRAPH;
	SIGNAL ip1, ip2, ip3, ip4, ip5, ip6, ip7, ip8 : ip_addr_array;
	SIGNAL metric: RAM_FOR_DISTANCE;
	signal control1, control2, control3, control4, control5, control6, control7, control8: std_logic:='0';
	signal extract1, extract2, extract3, extract4, extract5, extract6, extract7, extract8: std_logic:='0';
	signal combined: std_logic:='0';
	signal neighbour_id1,neighbour_id2,neighbour_id3,neighbour_id4,neighbour_id5,
				neighbour_id6,neighbour_id7,neighbour_id8:std_logic_vector(31 downto 0);

	-- Type for neighbour states
	TYPE neighbour_state IS (DOWN, EXSTART, FULL);
	SIGNAL state1, state2, state3, state4, state5, state6, state7, state8 : neighbour_state := DOWN;

   signal version_number : std_logic_vector(7 downto 0) := "00000010";
   signal packet_length : std_logic_vector(15 downto 0) := "0000000001001100";
   signal router_id : std_logic_vector(31 downto 0) := (others => '0');
   signal area_id : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
   signal checksum : std_logic_vector(15 downto 0) := (others => '0');
   signal auType : std_logic_vector(16 downto 0) := (others => '0');
   signal authentication : std_logic_vector(63 downto 0) := (others => '0');
   signal networkMask : std_logic_vector(31 downto 0) := (others => '0');
   signal helloInterval : std_logic_vector(15 downto 0) := (std_logic_vector(to_unsigned(40000, 16)));
   signal options : std_logic_vector(7 downto 0) := (others => '0');
   signal rtrPri : std_logic_vector(7 downto 0) := (others => '0');
   signal routerDeadInterval : std_logic_vector(31 downto 0) := (others => '0');
   signal designatedRouter : std_logic_vector(31 downto 0) := (others => '0');
   signal backupDesignatedRouter : std_logic_vector(31 downto 0) := (others => '0');
   signal hello_packet_out: std_logic_vector(7 downto 0);
   signal validity: std_logic:='0';

	-- packet parser component 
	COMPONENT packetParser IS
		PORT (
			clk : IN std_logic;
			packet_in : IN std_logic_vector(7 DOWNTO 0);
			valid_in : IN std_logic;
			hello_received : OUT std_logic;
			senders_id: out std_logic_vector(31 downto 0);
			dd_received : OUT std_logic;
			DD : OUT databaseDescription);
	END COMPONENT packetParser;

	-- dd parser component
	COMPONENT extract_info IS
		PORT (
			control : in std_logic;
			DD : IN databaseDescription;
			graph : OUT RAM_FOR_GRAPH;
			IP_ADDR : OUT ip_addr_array;
			extraction_done: out std_logic);
	END COMPONENT extract_info;
	
	component GraphCombine IS
	PORT (
		signal control : in std_logic;
		SIGNAL ONE : IN RAM_FOR_GRAPH;
		SIGNAL TWO : IN RAM_FOR_GRAPH;
		SIGNAL THREE : IN RAM_FOR_GRAPH;
		SIGNAL FOUR : IN RAM_FOR_GRAPH;
		SIGNAL FIVE : IN RAM_FOR_GRAPH;
		SIGNAL SIX : IN RAM_FOR_GRAPH;
		SIGNAL SEVEN : IN RAM_FOR_GRAPH;
		SIGNAL EIGHT : IN RAM_FOR_GRAPH;
		SIGNAL IPONE : IN ip_addr_array;
		SIGNAL IPTWO : IN ip_addr_array;
		SIGNAL IPTHREE: IN ip_addr_array;
		SIGNAL IPFOUR: IN ip_addr_array;
		SIGNAL IPFIVE : IN ip_addr_array;
		SIGNAL IPSIX : IN ip_addr_array;
		SIGNAL IPSEVEN : IN ip_addr_array;
		SIGNAL IPEIGHT: IN ip_addr_array;
		SIGNAL MAIN_GRAPH : OUT RAM_FOR_GRAPH;
		SIGNAL MAIN_IP: OUT ip_addr_array;
		signal combine_done: out std_logic
	);
	END component GraphCombine;
	
	component design IS
	PORT (
		control : in std_logic;
		clk : IN STD_LOGIC;
		Graph : IN RAM_FOR_GRAPH;
		Distance : OUT RAM_FOR_DISTANCE;
		Next_hop : OUT RAM_FOR_NEXTHOP
		);
	END component design;

	component send_hello_packet is
	    port(
	        version_number: in std_logic_vector(7 downto 0);
	        packet_length: in std_logic_vector(15 downto 0);
	        router_id: in std_logic_vector(31 downto 0);
	        area_id: in std_logic_vector(31 downto 0);
	        checksum: in std_logic_vector(15 downto 0);
	        auType: in std_logic_vector(16 downto 0);
	        authentication: in std_logic_vector(63 downto 0);
	        networkMask: in std_logic_vector(31 downto 0);
	        helloInterval:in std_logic_vector(15 downto 0);
	        options: in std_logic_vector(7 downto 0);
	        rtrPri: in std_logic_vector(7 downto 0);
	        routerDeadInterval: in std_logic_vector(31 downto 0);
	        designatedRouter: in std_logic_vector(31 downto 0);
	        backupDesignatedRouter: in std_logic_vector(31 downto 0);
	        neighbour_id1: in std_logic_vector(31 downto 0);
	        neighbour_id2: in std_logic_vector(31 downto 0);
	        neighbour_id3: in std_logic_vector(31 downto 0);
	        neighbour_id4: in std_logic_vector(31 downto 0);
	        neighbour_id5: in std_logic_vector(31 downto 0);
	        neighbour_id6: in std_logic_vector(31 downto 0);
	        neighbour_id7: in std_logic_vector(31 downto 0);
	        neighbour_id8: in std_logic_vector(31 downto 0);
	        clk: in std_logic;
	        hello_packet_out: out std_logic_vector(7 downto 0);
	        validity: out std_logic);
	end component send_hello_packet; 
BEGIN

	-- components instantiation for neighbour 1
	packetParser1 : packetParser PORT MAP(clk, packet_in1, valid_in1, hello_received1, neighbour_id1, dd_received1, dd1);
	extract_info1 : extract_info PORT MAP(control1, dd1, graph1, ip1,extract1);
	-- components instantiation for neighbour 2
	packetParser2 : packetParser PORT MAP(clk, packet_in2, valid_in2, hello_received2, neighbour_id2, dd_received2, dd2);
	extract_info2 : extract_info PORT MAP(control2, dd2, graph2, ip2,extract2);
	-- components instantiation for neighbour 3
	packetParser3 : packetParser PORT MAP(clk, packet_in3, valid_in3, hello_received3, neighbour_id3, dd_received3, dd3);
	extract_info3 : extract_info PORT MAP(control3, dd3, graph3, ip3,extract3);
	-- components instantiation for neighbour 4
	packetParser4 : packetParser PORT MAP(clk, packet_in4, valid_in4, hello_received4, neighbour_id4, dd_received4, dd4);
	extract_info4 : extract_info PORT MAP(control4, dd4, graph4, ip4,extract4);
	-- components instantiation for neighbour 5
	packetParser5 : packetParser PORT MAP(clk, packet_in5, valid_in5, hello_received5, neighbour_id5, dd_received5, dd5);
	extract_info5 : extract_info PORT MAP(control5, dd5, graph5, ip5,extract5);
	-- components instantiation for neighbour 6
	packetParser6 : packetParser PORT MAP(clk, packet_in6, valid_in6, hello_received6, neighbour_id6, dd_received6, dd6);
	extract_info6 : extract_info PORT MAP(control6, dd6, graph6, ip6,extract6);
	-- components instantiation for neighbour 7
	packetParser7 : packetParser PORT MAP(clk, packet_in7, valid_in7, hello_received7, neighbour_id7, dd_received7, dd7);
	extract_info7 : extract_info PORT MAP(control7, dd7, graph7, ip7,extract7);
	-- components instantiation for neighbour 8
	packetParser8 : packetParser PORT MAP(clk, packet_in8, valid_in8, hello_received8, neighbour_id8, dd_received8, dd8);
	extract_info8 : extract_info PORT MAP(control8, dd8, graph8, ip8,extract8);
	--combine graph and ip
	combiner: GraphCombine PORT MAP(control_graph, graph1, graph2, graph3, graph4, graph5, graph6, graph7, graph8,
									ip1, ip2, ip3, ip4, ip5, ip6, ip7, ip8, graph, gateway_ip,combined);
	dijkstra: design PORT MAP(control_dijkstra, clk, graph, metric, gateway_node);
	hello_sender: send_hello_packet PORT MAP (
	         version_number => version_number,
	         packet_length => packet_length,
	         router_id => router_id,
	         area_id => area_id,
	         checksum => checksum,
	         auType => auType,
	         authentication => authentication,
	         networkMask => networkMask,
	         helloInterval => helloInterval,
	         options => options,
	         rtrPri => rtrPri,
	         routerDeadInterval => routerDeadInterval,
	         designatedRouter => designatedRouter,
	         backupDesignatedRouter => backupDesignatedRouter,
	         neighbour_id1 => neighbour_id1,
	         neighbour_id2 => neighbour_id2,
	         neighbour_id3 => neighbour_id3,
	         neighbour_id4 => neighbour_id4,
	         neighbour_id5 => neighbour_id5,
	         neighbour_id6 => neighbour_id6,
	         neighbour_id7 => neighbour_id7,
	         neighbour_id8 => neighbour_id8,
	         clk => clk,
	         hello_packet_out => hello_packet_out,
	         validity => validity
	       );


	-- process for port1
	PROCESS (hello_received1, dd_received1) IS
	BEGIN
		IF (hello_received1 = '1') THEN
			IF (state1 = DOWN) THEN
				state1 <= EXSTART;
				--hello_received1 <= '0';
			END IF;
		ELSIF (dd_received1 = '1') THEN
			IF (state1 = EXSTART) THEN
				state1 <= FULL;
				--dd_received1 <= '0';
			END IF;
		END IF;
	END PROCESS;
	
	
	-- process for port2
	PROCESS (hello_received2, dd_received2) IS
	BEGIN
		IF (hello_received2 = '1') THEN
			IF (state2 = DOWN) THEN
				state2 <= EXSTART;
				--hello_received2 <= '0';
			END IF;
		ELSIF (dd_received2 = '1') THEN
			IF (state2 = EXSTART) THEN
				state2 <= FULL;
				--dd_received2 <= '0';
			END IF;
		END IF;
	END PROCESS;
	-- process for port3
	PROCESS (hello_received3, dd_received3) IS
	BEGIN
		IF (hello_received3 = '1') THEN
			IF (state3 = DOWN) THEN
				state3 <= EXSTART;
				--hello_received3 <= '0';
			END IF;
		ELSIF (dd_received3 = '1') THEN
			IF (state3 = EXSTART) THEN
				state3 <= FULL;
				--dd_received3 <= '0';
			END IF;
		END IF;
	END PROCESS;
	-- process for port4
	PROCESS (hello_received4, dd_received4) IS
	BEGIN
		IF (hello_received4 = '1') THEN
			IF (state4 = DOWN) THEN
				state4 <= EXSTART;
				--hello_received4 <= '0';
			END IF;
		ELSIF (dd_received4 = '1') THEN
			IF (state4 = EXSTART) THEN
				state4 <= FULL;
				--dd_received4 <= '0';
			END IF;
		END IF;
	END PROCESS;
	-- process for port5
	PROCESS (hello_received5, dd_received5) IS
	BEGIN
		IF (hello_received5 = '1') THEN
			IF (state5 = DOWN) THEN
				state5 <= EXSTART;
				--hello_received5 <= '0';
			END IF;
		ELSIF (dd_received5 = '1') THEN
			IF (state5 = EXSTART) THEN
				state5 <= FULL;
				--dd_received5 <= '0';
			END IF;
		END IF;
	END PROCESS;
	-- process for port6
	PROCESS (hello_received6, dd_received6) IS
	BEGIN
		IF (hello_received6 = '1') THEN
			IF (state6 = DOWN) THEN
				state6 <= EXSTART;
				--hello_received6 <= '0';
			END IF;
		ELSIF (dd_received6 = '1') THEN
			IF (state6 = EXSTART) THEN
				state6 <= FULL;
				--dd_received6 <= '0';
			END IF;
		END IF;
	END PROCESS;
	-- process for port7
	PROCESS (hello_received7, dd_received7) IS
	BEGIN
		IF (hello_received7 = '1') THEN
			IF (state7 = DOWN) THEN
				state7 <= EXSTART;
				--hello_received7 <= '0';
			END IF;
		ELSIF (dd_received7 = '1') THEN
			IF (state7 = EXSTART) THEN
				state7 <= FULL;
				--dd_received7 <= '0';
			END IF;
		END IF;
	END PROCESS;
	-- process for port8
	PROCESS (hello_received8, dd_received8) IS
	BEGIN
		IF (hello_received8 = '1') THEN
			IF (state8 = DOWN) THEN
				state8 <= EXSTART;
				--hello_received8 <= '0';
			END IF;
		ELSIF (dd_received8 = '1') THEN
			IF (state8 = EXSTART) THEN
				state8 <= FULL;
				--dd_received8 <= '0';
			END IF;
		END IF;
	END PROCESS;

	process(dd_received1) is
	begin
	--report "Help me!!!!!!!!!";
	if dd_received1 = '1' then control1 <= '1';
	else control1 <= '0'; end if;
	end process;

	process(dd_received2) is 
	begin 
	if dd_received2 = '1' then control2 <= '1';
	else control2 <= '0'; end if; 
	end process; 

	process(dd_received3) is 
	begin 
	if dd_received3 = '1' then control3 <= '1';
	else control3 <= '0'; end if; 
	end process; 

	process(dd_received4) is 
	begin 
	if dd_received4 = '1' then control4 <= '1';
	else control4 <= '0'; end if; 
	end process; 

	process(dd_received5) is 
	begin 
	if dd_received5 = '1' then control5 <= '1';
	else control5 <= '0'; end if; 
	end process; 

	process(dd_received6) is 
	begin 
	if dd_received6 = '1' then control6 <= '1';
	else control6 <= '0'; end if; 
	end process; 

	process(dd_received7) is 
	begin 
	if dd_received7 = '1' then control7 <= '1';
	else control7 <= '0'; end if; 
	end process; 

	process(dd_received8) is 
	begin 
	if dd_received8 = '1' then control8 <= '1';
	else control8 <= '0'; end if; 
	end process;
	
	process(extract1, extract2, extract3, extract4, extract5, extract6, extract6, extract7, extract8) is
	begin
	if extract1 = '1' or extract2 = '1' or extract3 = '1' or extract4 = '1' or extract5 = '1' or extract6 = '1' or extract7 = '1' or extract8 = '1'
	then control_graph <= '1'; 
	else control_graph <= '0'; end if;
	end process;
	
	process(combined) is
	begin
	if combined = '1' then control_dijkstra <= '1'; else control_dijkstra <= '0'; end if;
	end process;
   
	-- process
	process(clk) is
	begin
	if validity = '1' then
		packet_out1 <= hello_packet_out;
		packet_out2 <= hello_packet_out;
		packet_out3 <= hello_packet_out;
		packet_out4 <= hello_packet_out;
		packet_out5 <= hello_packet_out;
		packet_out6 <= hello_packet_out;
		packet_out7 <= hello_packet_out;
		packet_out8 <= hello_packet_out;
		valid_out1 <= validity;
		valid_out2 <= validity;
		valid_out3 <= validity;
		valid_out4 <= validity;
		valid_out5 <= validity;
		valid_out6 <= validity;
		valid_out7 <= validity;
		valid_out8 <= validity;
	else
		packet_out1 <= "00000000";
		packet_out2 <= "00000000";
		packet_out3 <= "00000000";
		packet_out4 <= "00000000";
		packet_out5 <= "00000000";
		packet_out6 <= "00000000";
		packet_out7 <= "00000000";
		packet_out8 <= "00000000";
		valid_out1 <= '0';
		valid_out2 <= '0';
		valid_out3 <= '0';
		valid_out4 <= '0';
		valid_out5 <= '0';
		valid_out6 <= '0';
		valid_out7 <= '0';
		valid_out8 <= '0';
	end if;
	end process;

END behavioural;