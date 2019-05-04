-- TestBench Template 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY tb_dd IS
END tb_dd;
ARCHITECTURE behavior OF tb_dd IS 
-- Component Declaration
        COMPONENT packetParser
        PORT(
                clk: in std_logic;
                packet_in: in std_logic_vector(7 downto 0);
                valid_in: in std_logic
                );
        END COMPONENT;
          
          signal clk: std_logic := '0';
        SIGNAL packet_in1 :  std_logic_vector(7 downto 0);
        SIGNAL valid_in1 : std_logic;
        
           -- Clock period definitions
 constant clk_period : time := 10 ns;
BEGIN
      
-- Component Instantiation
        uut: packetParser PORT MAP(
                clk => clk,
                packet_in => packet_in1,
                valid_in => valid_in1
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
packet_in1 <= "00001011";
    wait for clk_period;
packet_in1 <= "10001100";
    wait for clk_period;
-- I/P for ROUTER ID
packet_in1 <= "11000000";
    wait for clk_period;
packet_in1 <= "10101000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "10101000";
    wait for clk_period;
-- I/P for AREA ID
packet_in1 <= "11000000";
    wait for clk_period;
packet_in1 <= "01100110";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "01101001";
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
-- I/P for ZEROS1
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ZEROS2
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for OPTIONS
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ETC
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for DD SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010110";
    wait for clk_period;
packet_in1 <= "10010011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011101";
    wait for clk_period;
packet_in1 <= "11000110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100101";
    wait for clk_period;
packet_in1 <= "10110011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011010";
    wait for clk_period;
packet_in1 <= "11110110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011011";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011001";
    wait for clk_period;
packet_in1 <= "10000001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "10001000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011011";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "10110000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010011";
    wait for clk_period;
packet_in1 <= "10110111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000110";
    wait for clk_period;
packet_in1 <= "11011100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100101";
    wait for clk_period;
packet_in1 <= "11110011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00010111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100001";
    wait for clk_period;
packet_in1 <= "00010011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001110";
    wait for clk_period;
packet_in1 <= "10101001";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001011";
    wait for clk_period;
packet_in1 <= "11111010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010110";
    wait for clk_period;
packet_in1 <= "01110010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "11010100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010110";
    wait for clk_period;
packet_in1 <= "10101011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "11000110";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "01110101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011011";
    wait for clk_period;
packet_in1 <= "11111111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011010";
    wait for clk_period;
packet_in1 <= "11011001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "01111001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00011010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "00010101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000110";
    wait for clk_period;
packet_in1 <= "00010110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "10110000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100101";
    wait for clk_period;
packet_in1 <= "11101010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "00001101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001001";
    wait for clk_period;
packet_in1 <= "11101011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001110";
    wait for clk_period;
packet_in1 <= "10101011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "10001001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010011";
    wait for clk_period;
packet_in1 <= "01110111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011001";
    wait for clk_period;
packet_in1 <= "01111011";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011101";
    wait for clk_period;
packet_in1 <= "10011111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "01111111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "10100010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000110";
    wait for clk_period;
packet_in1 <= "10000110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001011";
    wait for clk_period;
packet_in1 <= "10011001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010101";
    wait for clk_period;
packet_in1 <= "00101110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100111";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100101";
    wait for clk_period;
packet_in1 <= "01000111";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "11100001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00110110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "00010001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "11011111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010001";
    wait for clk_period;
packet_in1 <= "11010110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "11001110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00111101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011101";
    wait for clk_period;
packet_in1 <= "11010111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00001111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011001";
    wait for clk_period;
packet_in1 <= "10010001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000001";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010111";
    wait for clk_period;
packet_in1 <= "10100001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000001";
    wait for clk_period;
packet_in1 <= "00111111";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "01011101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001111";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010010";
    wait for clk_period;
packet_in1 <= "10100001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00010011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "10101011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010001";
    wait for clk_period;
packet_in1 <= "11000010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011010";
    wait for clk_period;
packet_in1 <= "00011001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "01010010";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001001";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010011";
    wait for clk_period;
packet_in1 <= "11010000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "10101101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011001";
    wait for clk_period;
packet_in1 <= "11001001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "11100110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011011";
    wait for clk_period;
packet_in1 <= "10111001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011010";
    wait for clk_period;
packet_in1 <= "01000010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "01110010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011110";
    wait for clk_period;
packet_in1 <= "01010011";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000111";
    wait for clk_period;
packet_in1 <= "00111001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000001";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011110";
    wait for clk_period;
packet_in1 <= "00011110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000101";
    wait for clk_period;
packet_in1 <= "10101001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "10111011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011010";
    wait for clk_period;
packet_in1 <= "01001011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001011";
    wait for clk_period;
packet_in1 <= "10000111";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001011";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010111";
    wait for clk_period;
packet_in1 <= "11100001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00011011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "10001101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "11111010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010011";
    wait for clk_period;
packet_in1 <= "11110000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "01110111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000101";
    wait for clk_period;
packet_in1 <= "00111101";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100101";
    wait for clk_period;
packet_in1 <= "10011000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "11101111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011011";
    wait for clk_period;
packet_in1 <= "10111010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010101";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "00010101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001111";
    wait for clk_period;
packet_in1 <= "10001000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "10001010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "10011100";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00100011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100011";
    wait for clk_period;
packet_in1 <= "11011000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "01001000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001001";
    wait for clk_period;
packet_in1 <= "11000100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "10000010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011110";
    wait for clk_period;
packet_in1 <= "10101110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "01111101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011101";
    wait for clk_period;
packet_in1 <= "10000111";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010011";
    wait for clk_period;
packet_in1 <= "00011111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "01010001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010111";
    wait for clk_period;
packet_in1 <= "00110111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100101";
    wait for clk_period;
packet_in1 <= "00111010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011110";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000101";
    wait for clk_period;
packet_in1 <= "11111111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000001";
    wait for clk_period;
packet_in1 <= "10011000";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001111";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "10101100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011011";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011110";
    wait for clk_period;
packet_in1 <= "10001000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001110";
    wait for clk_period;
packet_in1 <= "00111001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011001";
    wait for clk_period;
packet_in1 <= "00110110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "11101000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011101";
    wait for clk_period;
packet_in1 <= "00101101";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000101";
    wait for clk_period;
packet_in1 <= "01000101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011101";
    wait for clk_period;
packet_in1 <= "01101101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001011";
    wait for clk_period;
packet_in1 <= "11010111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010101";
    wait for clk_period;
packet_in1 <= "10011001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "00110110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "10001001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000101";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010001";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011001";
    wait for clk_period;
packet_in1 <= "00011011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010010";
    wait for clk_period;
packet_in1 <= "11011011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "11011111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010001";
    wait for clk_period;
packet_in1 <= "10001100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000101";
    wait for clk_period;
packet_in1 <= "00010110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000111";
    wait for clk_period;
packet_in1 <= "10000111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100001";
    wait for clk_period;
packet_in1 <= "10100111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01000100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001001";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "00110010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100001";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011110";
    wait for clk_period;
packet_in1 <= "10011100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "11011110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010111";
    wait for clk_period;
packet_in1 <= "11101100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "11101001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010010";
    wait for clk_period;
packet_in1 <= "10101010";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001001";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010011";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "10101011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "11010110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011110";
    wait for clk_period;
packet_in1 <= "11000010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "00110011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010010";
    wait for clk_period;
packet_in1 <= "01010011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100011";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01001100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "10010000";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001001";
    wait for clk_period;
packet_in1 <= "10001111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "11000110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100011";
    wait for clk_period;
packet_in1 <= "00100000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001001";
    wait for clk_period;
packet_in1 <= "01100110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "10010011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010110";
    wait for clk_period;
packet_in1 <= "11011000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010110";
    wait for clk_period;
packet_in1 <= "01111001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001001";
    wait for clk_period;
packet_in1 <= "11011000";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010101";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000110";
    wait for clk_period;
packet_in1 <= "01011000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011001";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "10011001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010111";
    wait for clk_period;
packet_in1 <= "11110110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01010100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "00110111";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001011";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "10111010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011101";
    wait for clk_period;
packet_in1 <= "01110110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100001";
    wait for clk_period;
packet_in1 <= "11001101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "10110101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000110";
    wait for clk_period;
packet_in1 <= "11001010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "11110101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100101";
    wait for clk_period;
packet_in1 <= "11111100";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001011";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00010111";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00101110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100010";
    wait for clk_period;
packet_in1 <= "01110001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "11010011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010111";
    wait for clk_period;
packet_in1 <= "10110101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100011";
    wait for clk_period;
packet_in1 <= "01011110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "00111110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011011";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "00001011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01011100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001111";
    wait for clk_period;
packet_in1 <= "10110010";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "10010110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "11010001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "01111011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00010000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "01100010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "00001001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011001";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "11100100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "01101101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000010";
    wait for clk_period;
packet_in1 <= "01001001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010001";
    wait for clk_period;
packet_in1 <= "11100101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010011";
    wait for clk_period;
packet_in1 <= "10011000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010111";
    wait for clk_period;
packet_in1 <= "00010001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "10101000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001001";
    wait for clk_period;
packet_in1 <= "01011110";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "11010001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "11011001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "01010110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001110";
    wait for clk_period;
packet_in1 <= "01111001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010001";
    wait for clk_period;
packet_in1 <= "11110000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "11100100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "11101111";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011011";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00110110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010001";
    wait for clk_period;
packet_in1 <= "01011110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001111";
    wait for clk_period;
packet_in1 <= "10010110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "01111101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "11011010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "10100001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "01010101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01101100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "11001000";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "10010101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "01111011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "10000001";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100110";
    wait for clk_period;
packet_in1 <= "11011101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001110";
    wait for clk_period;
packet_in1 <= "01010111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "01001011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010001";
    wait for clk_period;
packet_in1 <= "10000100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001010";
    wait for clk_period;
packet_in1 <= "10110111";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011101";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111010";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100001";
    wait for clk_period;
packet_in1 <= "11001010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "01110000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000111";
    wait for clk_period;
packet_in1 <= "10101010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000111";
    wait for clk_period;
packet_in1 <= "00101010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001100";
    wait for clk_period;
packet_in1 <= "01111100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01110100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000011";
    wait for clk_period;
packet_in1 <= "00110011";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001111";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010100";
    wait for clk_period;
packet_in1 <= "11000111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111000";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100000";
    wait for clk_period;
packet_in1 <= "00111100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111000";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100101";
    wait for clk_period;
packet_in1 <= "10011111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111000";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011011";
    wait for clk_period;
packet_in1 <= "00010101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111000";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "11011101";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111000";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011101";
    wait for clk_period;
packet_in1 <= "10101100";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111000";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001000";
    wait for clk_period;
packet_in1 <= "11001000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111000";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00000100";
    wait for clk_period;
packet_in1 <= "10000101";
    wait for clk_period;
-- I/P for LS ID SRC
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00001111";
    wait for clk_period;
packet_in1 <= "10000000";
    wait for clk_period;
-- I/P for ADV ROUTER
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00011111";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS SEQ NUM
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00111110";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00110110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111100";
    wait for clk_period;
packet_in1 <= "00000001";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011100";
    wait for clk_period;
packet_in1 <= "00100110";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111100";
    wait for clk_period;
packet_in1 <= "00000010";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001011";
    wait for clk_period;
packet_in1 <= "11110010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111100";
    wait for clk_period;
packet_in1 <= "00000011";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00011000";
    wait for clk_period;
packet_in1 <= "00110000";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111100";
    wait for clk_period;
packet_in1 <= "00000100";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001000";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00100100";
    wait for clk_period;
packet_in1 <= "01000011";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111100";
    wait for clk_period;
packet_in1 <= "00000101";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001010";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010111";
    wait for clk_period;
packet_in1 <= "00111010";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111100";
    wait for clk_period;
packet_in1 <= "00000110";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001100";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00010000";
    wait for clk_period;
packet_in1 <= "01100111";
    wait for clk_period;
-- I/P for LS DEST ID
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "00000000";
    wait for clk_period;
packet_in1 <= "01111100";
    wait for clk_period;
packet_in1 <= "00000111";
    wait for clk_period;
-- I/P for LS DATA
packet_in1 <= "10101100";
    wait for clk_period;
packet_in1 <= "10011110";
    wait for clk_period;
packet_in1 <= "01100100";
    wait for clk_period;
packet_in1 <= "00001110";
    wait for clk_period;
-- I/P for METRIC COST
packet_in1 <= "00001101";
    wait for clk_period;
packet_in1 <= "10000010";
    wait for clk_period;


    wait; -- will wait forever
    END PROCESS tb;
  --  End Test Bench 
END;