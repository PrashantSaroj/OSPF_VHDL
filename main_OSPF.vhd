library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity main_OSPF is
port(
	-- input packets
	-- valid_i will be 1 if packeti is cumming
	packet_in1: in std_logic_vector(7 downto 0);
	packet_in2: in std_logic_vector(7 downto 0);
	packet_in3: in std_logic_vector(7 downto 0);
	packet_in4: in std_logic_vector(7 downto 0);
	packet_in5: in std_logic_vector(7 downto 0);
	packet_in6: in std_logic_vector(7 downto 0);
	packet_in7: in std_logic_vector(7 downto 0);
	packet_in8: in std_logic_vector(7 downto 0);
	valid_in1: in std_logic;
	valid_in2: in std_logic;
	valid_in3: in std_logic;
	valid_in4: in std_logic;
	valid_in5: in std_logic;
	valid_in6: in std_logic;
	valid_in7: in std_logic;
	valid_in8: in std_logic;
	
	-- clocks to be decided according to needs
	-- clocks end here

	-- output packets
	packet_out1: out std_logic_vector(7 downto 0);
	packet_out2: out std_logic_vector(7 downto 0);
	packet_out3: out std_logic_vector(7 downto 0);
	packet_out4: out std_logic_vector(7 downto 0);
	packet_out5: out std_logic_vector(7 downto 0);
	packet_out6: out std_logic_vector(7 downto 0);
	packet_out7: out std_logic_vector(7 downto 0);
	packet_out8: out std_logic_vector(7 downto 0);
	valid_out1: out std_logic;
	valid_out2: out std_logic;
	valid_out3: out std_logic;
	valid_out4: out std_logic;
	valid_out5: out std_logic;
	valid_out6: out std_logic;
	valid_out7: out std_logic;
	valid_out8: out std_logic);
end entity;


