-- TestBench Template 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY tb_dd IS
END tb_dd;
ARCHITECTURE behavior OF tb_dd IS 
-- Component Declaration
        COMPONENT packageParser
        PORT(
                clk: in std_logic;
                packet_in: in std_logic_vector(7 downto 0);
                valid_in: in std_logic;
                hello_received: out std_logic;
                dd_received: out std_logic;
                dd: out databaseDescription
                );
        END COMPONENT;
          
          signal clk: std_logic := '0';
        SIGNAL packet_in1 :  std_logic_vector(7 downto 0);
        SIGNAL valid_in1 : std_logic;

        -- output
        signal hello_received: std_logic;
        signal dd: databaseDescription;
        signal dd_received: std_logic;

           -- Clock period definitions
 constant clk_period : time := 10 ns;
BEGIN
      
-- Component Instantiation
        uut: packageParser PORT MAP(
                clk => clk,
                packet_in => packet_in1,
                valid_in => valid_in1,
                hello_received => hello_received,
                dd => dd,
                dd_received => dd_received
        );

        clk_process :process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

--  Test Bench Statements
   tb : PROCESS
   BEGIN
    -- wait until global set/reset completes
    -- Add user defined stimulus here
    valid_in1 <= '1';

    -- I/P for VERSION
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for PACKET TYPE
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for PACKET LENGTH
packet_in1 <= "01001100";
    wait for clk_period;
-- I/P for ROUTER ID
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for AREA ID
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for CHECKSUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for AU TYPE
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for AUTHENTICATION
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for NETWORK MASK
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for HELLO INTERVAL
packet_in1 <= "00010000";
    wait for clk_period;
-- I/P for OPTIONS
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for RTE PRI
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ROUTER DEAD INTERVAL
packet_in1 <= "00100000";
    wait for clk_period;
error in length of Designated ROUTER
-- I/P for BACKUP ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for Neighbour0
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for Neighbour1
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for Neighbour2
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for Neighbour3
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for Neighbour4
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for Neighbour5
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for Neighbour6
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for Neighbour7
packet_in1 <= "00000111";
    wait for clk_period;




    wait; -- will wait forever
    END PROCESS tb;
  --  End Test Bench 
END;