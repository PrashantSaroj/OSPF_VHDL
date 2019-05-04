library ieee;
use ieee.std_logic_1164.all;

package ddPackage is

type neighbour_t is array (0 to 31) of std_logic_vector(31 downto 0);
type databaseDescription is array (0 to 31, 0 to 91) of std_logic_vector(7 downto 0);
type ip_addr_array is array (0 to 31) of std_logic_vector(31 downto 0);
TYPE RAM_FOR_GRAPH IS ARRAY(0 to 31, 0 to 31) OF STD_LOGIC_VECTOR(7 DOWNTO 0);


end ddPackage;

package body ddPackage is
end ddPackage;