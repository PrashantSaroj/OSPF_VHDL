LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.main_package.ALL;

ENTITY GraphCombine IS
	PORT (
		SIGNAL control : IN std_logic;
		SIGNAL ONE : IN RAM_FOR_GRAPH;
		SIGNAL TWO : IN RAM_FOR_GRAPH;
		SIGNAL THREE : IN RAM_FOR_GRAPH;
		SIGNAL FOUR : IN RAM_FOR_GRAPH;
		SIGNAL FIVE : IN RAM_FOR_GRAPH;
		SIGNAL SIX : IN RAM_FOR_GRAPH;
		SIGNAL SEVEN : IN RAM_FOR_GRAPH;
		SIGNAL EIGHT : IN RAM_FOR_GRAPH;
		SIGNAL IPONE : IN ip_addr_array;
		SIGNAL IPTWO : IN ip_addr_array;
		SIGNAL IPTHREE : IN ip_addr_array;
		SIGNAL IPFOUR : IN ip_addr_array;
		SIGNAL IPFIVE : IN ip_addr_array;
		SIGNAL IPSIX : IN ip_addr_array;
		SIGNAL IPSEVEN : IN ip_addr_array;
		SIGNAL IPEIGHT : IN ip_addr_array;
		SIGNAL MAIN_GRAPH : OUT RAM_FOR_GRAPH;
		SIGNAL MAIN_IP : OUT ip_addr_array;
		SIGNAL combine_done : OUT std_logic
	);
END GraphCombine;

ARCHITECTURE Behavioral OF GraphCombine IS
	SIGNAL dummy : std_logic_vector(7 DOWNTO 0);
BEGIN
	PROCESS (control)
	BEGIN
		IF (control = '1') THEN
			FOR i IN 0 TO 31 LOOP
				FOR j IN 0 TO 31 LOOP
					IF (NOT (ONE(i, j) = "00000000")) AND (NOT (ONE(i, j) = "11111111")) AND (NOT (ONE(i, j) = "UUUUUUUU")) THEN
						MAIN_GRAPH(i, j) <= ONE(i, j);

					ELSIF (NOT (TWO(i, j) = "00000000")) AND (NOT (TWO(i, j) = "11111111")) AND (NOT (TWO(i, j) = "UUUUUUUU")) THEN
						MAIN_GRAPH(i, j) <= TWO(i, j);

					ELSIF (NOT (THREE(i, j) = "00000000")) AND (NOT (THREE(i, j) = "11111111")) AND (NOT (THREE(i, j) = "UUUUUUUU")) THEN
						MAIN_GRAPH(i, j) <= THREE(i, j);

					ELSIF (NOT (FOUR(i, j) = "00000000")) AND (NOT (FOUR(i, j) = "11111111")) AND (NOT (FOUR(i, j) = "UUUUUUUU")) THEN
						MAIN_GRAPH(i, j) <= FOUR(i, j);

					ELSIF (NOT (FIVE(i, j) = "00000000")) AND (NOT (FIVE(i, j) = "11111111")) AND (NOT (FIVE(i, j) = "UUUUUUUU")) THEN
						MAIN_GRAPH(i, j) <= FIVE(i, j);

					ELSIF (NOT (SIX(i, j) = "00000000")) AND (NOT (SIX(i, j) = "11111111")) AND (NOT (SIX(i, j) = "UUUUUUUU")) THEN
						MAIN_GRAPH(i, j) <= SIX(i, j);

					ELSIF (NOT (SEVEN(i, j) = "00000000")) AND (NOT (SEVEN(i, j) = "11111111")) AND (NOT (SEVEN(i, j) = "UUUUUUUU")) THEN
						MAIN_GRAPH(i, j) <= SEVEN(i, j);

					ELSIF (NOT (EIGHT(i, j) = "00000000")) AND (NOT (EIGHT(i, j) = "11111111")) AND (NOT (EIGHT(i, j) = "UUUUUUUU")) THEN
						MAIN_GRAPH(i, j) <= EIGHT(i, j);
					ELSE MAIN_GRAPH(i, j) <= "11111111";
					END IF;
				END LOOP;
			END LOOP;

			MAIN_GRAPH(0, 0) <= "00000000";

			FOR I IN 0 TO 31 LOOP
				MAIN_IP(I) <= IPONE(I);
			END LOOP;

			combine_done <= '1';
		ELSE combine_done <= '0';
		END IF;
	END PROCESS;
END Behavioral;