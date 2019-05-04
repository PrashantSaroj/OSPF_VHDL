LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.main_package.all;

ENTITY testbench1 IS
END testbench1;

ARCHITECTURE behavior OF testbench1 IS 

-- Component Declaration
component extract_info IS
  PORT (
	control : in std_logic;
    DD : IN databaseDescription;
    graph : OUT RAM_FOR_GRAPH;
    IP_ADDR : OUT ip_addr_array;
	 extraction_done: out std_logic);
END component extract_info;

SIGNAL DD :  databaseDescription:=(others => (others => (others => '0')));
SIGNAL graph :  RAM_FOR_GRAPH;
signal IP_ADDR : ip_addr_array;
signal control, extraction_done: std_logic;

BEGIN
uut: extract_info port map(control, DD, graph, IP_ADDR, extraction_done);

tb : PROCESS
BEGIN-- wait until global set/reset completes
control <= '0';
wait for 10 ns;
control <= '1';
wait for 10 ns;
control <= '0';
wait; -- will wait forever
END PROCESS tb;
END;