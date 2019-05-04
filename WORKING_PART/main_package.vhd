LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
PACKAGE main_package IS
	TYPE neighbour_t IS ARRAY (0 TO 31) OF std_logic_vector(31 DOWNTO 0);
	TYPE ip_addr_array IS ARRAY (0 TO 31) OF std_logic_vector(31 DOWNTO 0);
	TYPE RAM_FOR_GRAPH IS ARRAY(0 TO 31, 0 TO 31) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
	TYPE RAM_FOR_DISTANCE IS ARRAY(0 TO 31) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
	TYPE RAM_FOR_NEXTHOP IS ARRAY(0 TO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	TYPE databaseDescription IS ARRAY (0 TO 31, 0 TO 92) OF std_logic_vector(7 DOWNTO 0);
END main_package;
PACKAGE BODY main_package IS
END main_package;