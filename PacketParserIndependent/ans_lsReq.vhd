library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use WORK.ddPackage.all;

entity ans_lsReq is
port(
	clk : in std_logic;
	packet_in1: in std_logic_vector(7 downto 0);
	valid_in1: in std_logic;
	op: out std_logic_vector(7 downto 0):= "000000000";
	is_op: out std_logic:= '0';
	--update_version: out std_logic_vector(7 downto 0) := "00000000";
	--update_type: out std_logic_vector(7 downto 0):= "00000000";
	--update_length: out std_logic_vector(15 downto 0) := (others => '0');
	--update_router_id: out std_logic_vector(31 downto 0);
	--update_router_ip: out std_logic_vector(31 downto 0);
	--update_adv_router: out std_logic_vector(31 downto 0);
	--update_ls_seq_no: out std_logic_vector(31 downto 0);

	graph: in RAM_FOR_GRAPH
	);
end ans_lsReq;

architecture ans_lsReq_arc of ans_lsReq is

	signal counter: std_logic_vector(7 downto 0);
	signal version, p_type: std_logic_vector(7 downto 0) := "00000000";
	signal p_len: std_logic_vector(15 downto 0) := "0000000000000000";
	signal router_id, router_ip,adv_id: std_logic_vector(31 downto 0) := "00000000000000000000000000000000";

begin
uut1 : process( clk )
begin
	if rising_edge(clk) then
		if valid_in1 = '1' then
			case( counter ) is
			
				when "00000000" =>
					version <= packet_in1;
					counter <= "00000001";
				when "00000001" =>
					p_type <= packet_in1;
					counter <= "00000010";
				when "00000010" =>
					p_len(15 downto 8) <= packet_in1;
					counter <= "00000011";
				when "00000011" =>
					p_len(7 downto 0) <= packet_in1;
					counter <= "00000100";
				when "00000100" =>
					router_id(31 downto 24) <= packet_in1;
					counter <= "00000101";
				when "00000101" =>
					router_id(23 downto 16) <= packet_in1;
					counter <= "00000110";
				when "00000110" =>
					router_id(15 downto 8) <= packet_in1;
					counter <= "00000111";
				when "00001000" =>
					router_id(7 downto 0) <= packet_in1;
					counter <= "00001001";
				when "00001001" => 
					router_ip(31 downto 24) <= packet_in1;
					counter <= "00001010";
				when "00001010" => 
					router_ip(23 downto 16) <= packet_in1;
					counter <= "00001011";
				when "00001011" => 
					router_ip(15 downto 8) <= packet_in1;
					counter <= "00001100";
				when "00001100" => 
					router_ip(7 downto 0) <= packet_in1;
					counter <= "00001101";
				when "00001101" =>
					adv_id(31 downto 24) <= packet_in1;
					counter <= "00001110";
				when "00001110" =>
					adv_id(23 downto 16) <= packet_in1;
					counter <= "00001111";
				when "00001111" =>
					adv_id(15 downto 8) <= packet_in1;
					counter <= "00010000";
				when "00010000" =>
					adv_id(7 downto 0) <= packet_in1;
					counter <= "00010001";	
				-- graph should be given as i/p by now.
				when "00010001" =>
					if graph(adv_id,0) = "11111111" then
						counter <= "00010010";
						is_op <= '0';
					else
						op <= graph(adv_id,0);
						is_op <= '1';
						counter <= "00010010";
					end if;
				when "00010010" =>
					if graph(adv_id,1) = "11111111" then
						counter <= "00010011";
						is_op <= '0';
					else
						op <= graph(adv_id,1);
						is_op <= '1';
						counter <= "00010011";
					end if;
				when "00010011" =>
					if graph(adv_id,2) = "11111111" then
						counter <= "00010100";
						is_op <= '0';
					else
						op <= graph(adv_id,2);
						is_op <= '1';
						counter <= "00010100";
					end if;
				when "00010100" =>
					if graph(adv_id,3) = "11111111" then
						counter <= "00010101";
						is_op <= '0';
					else
						op <= graph(adv_id,3);
						is_op <= '1';
						counter <= "00010101";
					end if;
				when "00010101" =>
					if graph(adv_id,4) = "11111111" then
						counter <= "00010110";
						is_op <= '0';
					else
						op <= graph(adv_id,4);
						is_op <= '1';
						counter <= "00010110";
					end if;
				when "00010110" =>
					if graph(adv_id,5) = "11111111" then
						counter <= "00010111";
						is_op <= '0';
					else
						op <= graph(adv_id,5);
						is_op <= '1';
						counter <= "00010111";
					end if;
				when "00010111" =>
					if graph(adv_id,6) = "11111111" then
						counter <= "00011000";
						is_op <= '0';
					else
						op <= graph(adv_id,6);
						is_op <= '1';
						counter <= "00011000";
					end if;
				when "00011000" =>
					if graph(adv_id,7) = "11111111" then
						counter <= "00011001";
						is_op <= '0';
					else
						op <= graph(adv_id,7);
						is_op <= '1';
						counter <= "00011001";
					end if;
				when "00011001" =>
					if graph(adv_id,8) = "11111111" then
						counter <= "00011010";
						is_op <= '0';
					else
						op <= graph(adv_id,8);
						is_op <= '1';
						counter <= "00011010";
					end if;
				when "00011010" =>
					if graph(adv_id,9) = "11111111" then
						counter <= "00011011";
						is_op <= '0';
					else
						op <= graph(adv_id,9);
						is_op <= '1';
						counter <= "00011011";
					end if;
				when "00011011" =>
					if graph(adv_id,10) = "11111111" then
						counter <= "00011100";
						is_op <= '0';
					else
						op <= graph(adv_id,10);
						is_op <= '1';
						counter <= "00011100";
					end if;
				when "00011100" =>
					if graph(adv_id,11) = "11111111" then
						counter <= "00011101";
						is_op <= '0';
					else
						op <= graph(adv_id,11);
						is_op <= '1';
						counter <= "00011101";
					end if;
				when "00011101" =>
					if graph(adv_id,12) = "11111111" then
						counter <= "00011110";
						is_op <= '0';
					else
						op <= graph(adv_id,12);
						is_op <= '1';
						counter <= "00011110";
					end if;
				when "00011110" =>
					if graph(adv_id,13) = "11111111" then
						counter <= "00011111";
						is_op <= '0';
					else
						op <= graph(adv_id,13);
						is_op <= '1';
						counter <= "00011111";
					end if;
				when "00011111" =>
					if graph(adv_id,14) = "11111111" then
						counter <= "00100000";
						is_op <= '0';
					else
						op <= graph(adv_id,14);
						is_op <= '1';
						counter <= "00100000";
					end if;
				when "00100000" =>
					if graph(adv_id,15) = "11111111" then
						counter <= "00100001";
						is_op <= '0';
					else
						op <= graph(adv_id,15);
						is_op <= '1';
						counter <= "00100001";
					end if;
				when "00100001" =>
					if graph(adv_id,16) = "11111111" then
						counter <= "00100010";
						is_op <= '0';
					else
						op <= graph(adv_id,16);
						is_op <= '1';
						counter <= "00100010";
					end if;
				when "00100010" =>
					if graph(adv_id,17) = "11111111" then
						counter <= "00100011";
						is_op <= '0';
					else
						op <= graph(adv_id,17);
						is_op <= '1';
						counter <= "00100011";
					end if;
				when "00100011" =>
					if graph(adv_id,18) = "11111111" then
						counter <= "00100100";
						is_op <= '0';
					else
						op <= graph(adv_id,18);
						is_op <= '1';
						counter <= "00100100";
					end if;
				when "00100100" =>
					if graph(adv_id,19) = "11111111" then
						counter <= "00100101";
						is_op <= '0';
					else
						op <= graph(adv_id,19);
						is_op <= '1';
						counter <= "00100101";
					end if;
				when "00100101" =>
					if graph(adv_id,20) = "11111111" then
						counter <= "00100110";
						is_op <= '0';
					else
						op <= graph(adv_id,20);
						is_op <= '1';
						counter <= "00100110";
					end if;
				when "00100110" =>
					if graph(adv_id,21) = "11111111" then
						counter <= "00100111";
						is_op <= '0';
					else
						op <= graph(adv_id,21);
						is_op <= '1';
						counter <= "00100111";
					end if;
				when "00100111" =>
					if graph(adv_id,22) = "11111111" then
						counter <= "00101000";
						is_op <= '0';
					else
						op <= graph(adv_id,22);
						is_op <= '1';
						counter <= "00101000";
					end if;
				when "00101000" =>
					if graph(adv_id,23) = "11111111" then
						counter <= "00101001";
						is_op <= '0';
					else
						op <= graph(adv_id,23);
						is_op <= '1';
						counter <= "00101001";
					end if;
				when "00101001" =>
					if graph(adv_id,24) = "11111111" then
						counter <= "00101010";
						is_op <= '0';
					else
						op <= graph(adv_id,24);
						is_op <= '1';
						counter <= "00101010";
					end if;
				when "00101010" =>
					if graph(adv_id,25) = "11111111" then
						counter <= "00101011";
						is_op <= '0';
					else
						op <= graph(adv_id,25);
						is_op <= '1';
						counter <= "00101011";
					end if;
				when "00101011" =>
					if graph(adv_id,26) = "11111111" then
						counter <= "00101100";
						is_op <= '0';
					else
						op <= graph(adv_id,26);
						is_op <= '1';
						counter <= "00101100";
					end if;
				when "00101100" =>
					if graph(adv_id,27) = "11111111" then
						counter <= "00101101";
						is_op <= '0';
					else
						op <= graph(adv_id,27);
						is_op <= '1';
						counter <= "00101101";
					end if;
				when "00101101" =>
					if graph(adv_id,28) = "11111111" then
						counter <= "00101110";
						is_op <= '0';
					else
						op <= graph(adv_id,28);
						is_op <= '1';
						counter <= "00101110";
					end if;
				when "00101110" =>
					if graph(adv_id,29) = "11111111" then
						counter <= "00101111";
						is_op <= '0';
					else
						op <= graph(adv_id,29);
						is_op <= '1';
						counter <= "00101111";
					end if;
				when "00101111" =>
					if graph(adv_id,30) = "11111111" then
						counter <= "00110000";
						is_op <= '0';
					else
						op <= graph(adv_id,30);
						is_op <= '1';
						counter <= "00110000";
					end if;
				when "00110000" =>
					if graph(adv_id,31) = "11111111" then
						counter <= "00110001";
						is_op <= '0';
					else
						op <= graph(adv_id,31);
						is_op <= '1';
						counter <= "00110001";
					end if;
				when others =>
					null;
			end case ;
		end if ; -- valid_in1
	end if ; -- rising_edge
end process ; -- uut1

end architecture ; -- ans_lsReq_arc
