LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.main_package.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY design IS
	PORT (
		control: in STD_LOGIC;
		clk : IN STD_LOGIC;
		Graph : IN RAM_FOR_GRAPH;
		Distance : OUT RAM_FOR_DISTANCE;
		Next_hop : OUT RAM_FOR_NEXTHOP
	);

END design;

ARCHITECTURE Behavioral OF design IS
BEGIN

	PROCESS(control) IS
		VARIABLE minimum : std_logic_vector(7 DOWNTO 0) := (OTHERS => '1');
		VARIABLE visited : std_logic_vector(31 DOWNTO 0) := (OTHERS => '0');
		VARIABLE current_node : INTEGER := 0;
		VARIABLE current_distance : RAM_FOR_DISTANCE := (OTHERS => (OTHERS => '1'));
		VARIABLE actual_distance : RAM_FOR_DISTANCE := (OTHERS => (OTHERS => '1'));
		VARIABLE current_parent : RAM_FOR_NEXTHOP := (OTHERS => (OTHERS => '0'));
		VARIABLE actual_parent : RAM_FOR_NEXTHOP := (OTHERS => (OTHERS => '0'));
	BEGIN
		if control = '1' then
		current_distance(0) := "00000000";
		current_distance(1) := Graph(0, 1);
		current_distance(2) := Graph(0, 2);
		current_distance(3) := Graph(0, 3);
		current_distance(4) := Graph(0, 4);
		current_distance(5) := Graph(0, 5);
		current_distance(6) := Graph(0, 6);
		current_distance(7) := Graph(0, 7);
		current_distance(8) := Graph(0, 8);
		current_distance(9) := Graph(0, 9);
		current_distance(10) := Graph(0, 10);
		current_distance(11) := Graph(0, 11);
		current_distance(12) := Graph(0, 12);
		current_distance(13) := Graph(0, 13);
		current_distance(14) := Graph(0, 14);
		current_distance(15) := Graph(0, 15);
		current_distance(16) := Graph(0, 16);
		current_distance(17) := Graph(0, 17);
		current_distance(18) := Graph(0, 18);
		current_distance(19) := Graph(0, 19);
		current_distance(20) := Graph(0, 20);
		current_distance(21) := Graph(0, 21);
		current_distance(22) := Graph(0, 22);
		current_distance(23) := Graph(0, 23);
		current_distance(24) := Graph(0, 24);
		current_distance(25) := Graph(0, 25);
		current_distance(26) := Graph(0, 26);
		current_distance(27) := Graph(0, 27);
		current_distance(28) := Graph(0, 28);
		current_distance(29) := Graph(0, 29);
		current_distance(30) := Graph(0, 30);
		current_distance(31) := Graph(0, 31);

		---actual_distance initialization
		actual_distance(0) := Graph(0, 0);
		actual_distance(1) := Graph(0, 1);
		actual_distance(2) := Graph(0, 2);
		actual_distance(3) := Graph(0, 3);
		actual_distance(4) := Graph(0, 4);
		actual_distance(5) := Graph(0, 5);
		actual_distance(6) := Graph(0, 6);
		actual_distance(7) := Graph(0, 7);
		actual_distance(8) := Graph(0, 8);
		actual_distance(9) := Graph(0, 9);
		actual_distance(10) := Graph(0, 10);
		actual_distance(11) := Graph(0, 11);
		actual_distance(12) := Graph(0, 12);
		actual_distance(13) := Graph(0, 13);
		actual_distance(14) := Graph(0, 14);
		actual_distance(15) := Graph(0, 15);
		actual_distance(16) := Graph(0, 16);
		actual_distance(17) := Graph(0, 17);
		actual_distance(18) := Graph(0, 18);
		actual_distance(19) := Graph(0, 19);
		actual_distance(20) := Graph(0, 20);
		actual_distance(21) := Graph(0, 21);
		actual_distance(22) := Graph(0, 22);
		actual_distance(23) := Graph(0, 23);
		actual_distance(24) := Graph(0, 24);
		actual_distance(25) := Graph(0, 25);
		actual_distance(26) := Graph(0, 26);
		actual_distance(27) := Graph(0, 27);
		actual_distance(28) := Graph(0, 28);
		actual_distance(29) := Graph(0, 29);
		actual_distance(30) := Graph(0, 30);
		actual_distance(31) := Graph(0, 31);

		ASSERT(actual_distance(0) = Graph(0, 0));
		FOR x IN 0 TO 31 LOOP
			--determine the minimum node = current node

			current_node := 31;

			FOR id IN 0 TO 31 LOOP
				IF (visited(id DOWNTO id) = "0") THEN
					IF (current_distance(current_node) >= current_distance(id)) THEN
						current_node := id;
					END IF;
				END IF;
			END LOOP;
			visited(current_node DOWNTO current_node) := "1";
			actual_distance(current_node) := current_distance(current_node);

			IF (current_parent(current_node) = "00000000000000000000000000000000") THEN
				actual_parent(current_node) := (std_logic_vector(to_unsigned(current_node, 32)));
			ELSE
				actual_parent(current_node) := current_parent(current_node);
			END IF;

			IF (current_distance(current_node) = "11111111") THEN
				actual_parent(current_node) := "00000000000000000000000000100000";
			END IF;
			--update the current_distances for all nodes from current_node

			IF (NOT(current_distance(current_node) = "11111111")) THEN

				FOR next_node IN 0 TO 31 LOOP
					IF (NOT(Graph(current_node, next_node) = "11111111") AND NOT(current_node = next_node)) THEN

						IF (unsigned(current_distance(next_node)) > (unsigned((current_distance(current_node))) + unsigned(Graph(current_node, next_node)))) THEN
							current_distance(next_node) := (current_distance(current_node) + Graph(current_node, next_node));
							current_parent(next_node) := actual_parent(current_node);
							ASSERT(current_parent(next_node) = actual_parent(current_node));
							ASSERT (NOT(current_distance(next_node) = "11111111")) REPORT "distance is 11111111";
						END IF;

					END IF;
				END LOOP;
			END IF;
		END LOOP;

		Distance(0) <= actual_distance(0);
		Distance(1) <= actual_distance(1);
		Distance(2) <= actual_distance(2);
		Distance(3) <= actual_distance(3);
		Distance(4) <= actual_distance(4);
		Distance(5) <= actual_distance(5);
		Distance(6) <= actual_distance(6);
		Distance(7) <= actual_distance(7);
		Distance(8) <= actual_distance(8);
		Distance(9) <= actual_distance(9);
		Distance(10) <= actual_distance(10);
		Distance(11) <= actual_distance(11);
		Distance(12) <= actual_distance(12);
		Distance(13) <= actual_distance(13);
		Distance(14) <= actual_distance(14);
		Distance(15) <= actual_distance(15);
		Distance(16) <= actual_distance(16);
		Distance(17) <= actual_distance(17);
		Distance(18) <= actual_distance(18);
		Distance(19) <= actual_distance(19);
		Distance(20) <= actual_distance(20);
		Distance(21) <= actual_distance(21);
		Distance(22) <= actual_distance(22);
		Distance(23) <= actual_distance(23);
		Distance(24) <= actual_distance(24);
		Distance(25) <= actual_distance(25);
		Distance(26) <= actual_distance(26);
		Distance(27) <= actual_distance(27);
		Distance(28) <= actual_distance(28);
		Distance(29) <= actual_distance(29);
		Distance(30) <= actual_distance(30);
		Distance(31) <= actual_distance(31);

		Next_hop(0) <= actual_parent(0);
		Next_hop(1) <= actual_parent(1);
		Next_hop(2) <= actual_parent(2);
		Next_hop(3) <= actual_parent(3);
		Next_hop(4) <= actual_parent(4);
		Next_hop(5) <= actual_parent(5);
		Next_hop(6) <= actual_parent(6);
		Next_hop(7) <= actual_parent(7);
		Next_hop(8) <= actual_parent(8);
		Next_hop(9) <= actual_parent(9);
		Next_hop(10) <= actual_parent(10);
		Next_hop(11) <= actual_parent(11);
		Next_hop(12) <= actual_parent(12);
		Next_hop(13) <= actual_parent(13);
		Next_hop(14) <= actual_parent(14);
		Next_hop(15) <= actual_parent(15);
		Next_hop(16) <= actual_parent(16);
		Next_hop(17) <= actual_parent(17);
		Next_hop(18) <= actual_parent(18);
		Next_hop(19) <= actual_parent(19);
		Next_hop(20) <= actual_parent(20);
		Next_hop(21) <= actual_parent(21);
		Next_hop(22) <= actual_parent(22);
		Next_hop(23) <= actual_parent(23);
		Next_hop(24) <= actual_parent(24);
		Next_hop(25) <= actual_parent(25);
		Next_hop(26) <= actual_parent(26);
		Next_hop(27) <= actual_parent(27);
		Next_hop(28) <= actual_parent(28);
		Next_hop(29) <= actual_parent(29);
		Next_hop(30) <= actual_parent(30);
		Next_hop(31) <= actual_parent(31);
	end if;
	END PROCESS;
END Behavioral;