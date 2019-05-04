--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:55:22 05/04/2019
-- Design Name:   
-- Module Name:   /home/satyabrata/Dijkstra/tbforRequestSend.vhd
-- Project Name:  Dijkstra
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LSRequestSend
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 USE WORK.MY_PACKAGE.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tbforRequestSend IS
END tbforRequestSend;
 
ARCHITECTURE behavior OF tbforRequestSend IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ls_req
    PORT(
	 GRAPH: IN RAM_FOR_GRAPH;
         valid_out1 : OUT  std_logic;
         valid_out2 : OUT  std_logic;
         valid_out3 : OUT  std_logic;
         valid_out4 : OUT  std_logic;
         valid_out5 : OUT  std_logic;
         valid_out6 : OUT  std_logic;
         valid_out7 : OUT  std_logic;
         valid_out8 : OUT  std_logic;
         packet_out1 : OUT  std_logic_vector(7 downto 0);
         packet_out2 : OUT  std_logic_vector(7 downto 0);
         packet_out3 : OUT  std_logic_vector(7 downto 0);
         packet_out4 : OUT  std_logic_vector(7 downto 0);
         packet_out5 : OUT  std_logic_vector(7 downto 0);
         packet_out6 : OUT  std_logic_vector(7 downto 0);
         packet_out7 : OUT  std_logic_vector(7 downto 0);
         packet_out8 : OUT  std_logic_VECTOR(7 DOWNTO 0);
         clock : IN  std_logic;
         packet_num : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';

 	--Outputs
	SIGNAL GRAPH: RAM_FOR_GRAPH:= (OTHERS => (OTHERS => (OTHERS => '1')));
   signal valid_out1 : std_logic;
   signal valid_out2 : std_logic;
   signal valid_out3 : std_logic;
   signal valid_out4 : std_logic;
   signal valid_out5 : std_logic;
   signal valid_out6 : std_logic;
   signal valid_out7 : std_logic;
   signal valid_out8 : std_logic;
   signal packet_out1 : std_logic_vector(7 downto 0);
   signal packet_out2 : std_logic_vector(7 downto 0);
   signal packet_out3 : std_logic_vector(7 downto 0);
   signal packet_out4 : std_logic_vector(7 downto 0);
   signal packet_out5 : std_logic_vector(7 downto 0);
   signal packet_out6 : std_logic_vector(7 downto 0);
   signal packet_out7 : std_logic_vector(7 downto 0);
   signal packet_out8 : std_logic_vector(7 downto 0);
   signal packet_num : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ls_req PORT MAP (
	GRAPH => GRAPH,
          valid_out1 => valid_out1,
          valid_out2 => valid_out2,
          valid_out3 => valid_out3,
          valid_out4 => valid_out4,
          valid_out5 => valid_out5,
          valid_out6 => valid_out6,
          valid_out7 => valid_out7,
          valid_out8 => valid_out8,
          packet_out1 => packet_out1,
          packet_out2 => packet_out2,
          packet_out3 => packet_out3,
          packet_out4 => packet_out4,
          packet_out5 => packet_out5,
          packet_out6 => packet_out6,
          packet_out7 => packet_out7,
          packet_out8 => packet_out8,
          clock => clock,
          packet_num => packet_num
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     
      -- insert stimulus here 

      wait;
   end process;

END;
