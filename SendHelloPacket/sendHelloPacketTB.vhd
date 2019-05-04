LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.all;

 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sendHelloPacketTB IS
END sendHelloPacketTB;
 
ARCHITECTURE behavior OF sendHelloPacketTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT send_hello_packet
    PORT(
         version_number : IN  std_logic_vector(7 downto 0);
         packet_length : IN  std_logic_vector(15 downto 0);
         router_id : IN  std_logic_vector(31 downto 0);
         area_id : IN  std_logic_vector(31 downto 0);
         checksum : IN  std_logic_vector(15 downto 0);
         auType : IN  std_logic_vector(16 downto 0);
         authentication : IN  std_logic_vector(63 downto 0);
         networkMask : IN  std_logic_vector(31 downto 0);
         helloInterval : IN  std_logic_vector(15 downto 0);
         options : IN  std_logic_vector(7 downto 0);
         rtrPri : IN  std_logic_vector(7 downto 0);
         routerDeadInterval : IN  std_logic_vector(31 downto 0);
         designatedRouter : IN  std_logic_vector(31 downto 0);
         backupDesignatedRouter : IN  std_logic_vector(31 downto 0);
         neighbour_id1 : IN  std_logic_vector(31 downto 0);
         neighbour_id2 : IN  std_logic_vector(31 downto 0);
         neighbour_id3 : IN  std_logic_vector(31 downto 0);
         neighbour_id4 : IN  std_logic_vector(31 downto 0);
         neighbour_id5 : IN  std_logic_vector(31 downto 0);
         neighbour_id6 : IN  std_logic_vector(31 downto 0);
         neighbour_id7 : IN  std_logic_vector(31 downto 0);
         neighbour_id8 : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         hello_packet_out : OUT  std_logic_vector(7 downto 0);
         validity : OUT  std_logic);
    END COMPONENT;
    

   --Inputs
   signal version_number : std_logic_vector(7 downto 0) := (others => '0');
   signal packet_length : std_logic_vector(15 downto 0) := (others => '0');
   signal router_id : std_logic_vector(31 downto 0) := (others => '0');
   signal area_id : std_logic_vector(31 downto 0) := (others => '0');
   signal checksum : std_logic_vector(15 downto 0) := (others => '0');
   signal auType : std_logic_vector(16 downto 0) := (others => '0');
   signal authentication : std_logic_vector(63 downto 0) := (others => '0');
   signal networkMask : std_logic_vector(31 downto 0) := (others => '0');
   signal helloInterval : std_logic_vector(15 downto 0) := (std_logic_vector(to_unsigned(5, 16)));
   signal options : std_logic_vector(7 downto 0) := (others => '0');
   signal rtrPri : std_logic_vector(7 downto 0) := (others => '0');
   signal routerDeadInterval : std_logic_vector(31 downto 0) := (others => '0');
   signal designatedRouter : std_logic_vector(31 downto 0) := (others => '0');
   signal backupDesignatedRouter : std_logic_vector(31 downto 0) := (others => '0');
   signal neighbour_id1 : std_logic_vector(31 downto 0) := (others => '0');
   signal neighbour_id2 : std_logic_vector(31 downto 0) := (others => '0');
   signal neighbour_id3 : std_logic_vector(31 downto 0) := (others => '0');
   signal neighbour_id4 : std_logic_vector(31 downto 0) := (others => '0');
   signal neighbour_id5 : std_logic_vector(31 downto 0) := (others => '0');
   signal neighbour_id6 : std_logic_vector(31 downto 0) := (others => '0');
   signal neighbour_id7 : std_logic_vector(31 downto 0) := (others => '0');
   signal neighbour_id8 : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal hello_packet_out : std_logic_vector(7 downto 0);
   signal validity : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: send_hello_packet PORT MAP (
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

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     wait for 10 ns;
	   version_number <= std_logic_vector(to_unsigned(2, 8));
     packet_length <= std_logic_vector(to_unsigned(72, 16));
     router_id <= std_logic_vector(to_unsigned(1, 32));
     area_id <= std_logic_vector(to_unsigned(1, 32));
     checksum <= std_logic_vector(to_unsigned(2, 32));
     auType <= std_logic_vector(to_unsigned(3, 32));
     authentication <= std_logic_vector(to_unsigned(4, 64));
     networkMask <= std_logic_vector(to_unsigned(5, 32));
     options <= std_logic_vector(to_unsigned(7, 8));
     rtrPri <= std_logic_vector(to_unsigned(8, 8));
     routerDeadInterval <= std_logic_vector(to_unsigned(9, 32));
     designatedRouter <= std_logic_vector(to_unsigned(10, 32));
     backupDesignatedRouter <= std_logic_vector(to_unsigned(11, 32));
     neighbour_id1 <= std_logic_vector(to_unsigned(12, 32));
     neighbour_id2 <= std_logic_vector(to_unsigned(13, 32));
     neighbour_id3 <= std_logic_vector(to_unsigned(14, 32));
     neighbour_id4 <= std_logic_vector(to_unsigned(15, 32));
     neighbour_id5 <= std_logic_vector(to_unsigned(16, 32));
     neighbour_id6 <= std_logic_vector(to_unsigned(17, 32));
     neighbour_id7 <= std_logic_vector(to_unsigned(18, 32));
     neighbour_id8 <= std_logic_vector(to_unsigned(19, 32));
	  wait;
   end process;
END;
