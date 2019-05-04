-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

USE WORK.my_package.all;


  ENTITY testbench2 IS
  END testbench2;

  ARCHITECTURE behavior2 OF testbench2 IS 

  -- Component Declaration
          COMPONENT GraphCombine
          PORT(
            SIGNAL ONE : IN RAM_FOR_GRAPH;
				SIGNAL TWO : IN RAM_FOR_GRAPH;
				SIGNAL THREE : IN RAM_FOR_GRAPH;
				SIGNAL FOUR : IN RAM_FOR_GRAPH;
				SIGNAL FIVE : IN RAM_FOR_GRAPH;
				SIGNAL SIX : IN RAM_FOR_GRAPH;
				SIGNAL SEVEN : IN RAM_FOR_GRAPH;
				SIGNAL EIGHT : IN RAM_FOR_GRAPH;
				SIGNAL MAIN_GRAPH : OUT RAM_FOR_GRAPH  
				);					
          END COMPONENT;

				SIGNAL ONE : RAM_FOR_GRAPH:= (OTHERS => (OTHERS => (OTHERS => '1')));
				SIGNAL TWO : RAM_FOR_GRAPH:= (OTHERS => (OTHERS => (OTHERS => '1')));
				SIGNAL THREE : RAM_FOR_GRAPH:= (OTHERS => (OTHERS => (OTHERS => '1')));
				SIGNAL FOUR : RAM_FOR_GRAPH:= (OTHERS => (OTHERS => (OTHERS => '1')));
				SIGNAL FIVE : RAM_FOR_GRAPH:= (OTHERS => (OTHERS => (OTHERS => '1')));
				SIGNAL SIX : RAM_FOR_GRAPH:= (OTHERS => (OTHERS => (OTHERS => '1')));
				SIGNAL SEVEN : RAM_FOR_GRAPH:= (OTHERS => (OTHERS => (OTHERS => '1')));
				SIGNAL EIGHT : RAM_FOR_GRAPH:= (OTHERS => (OTHERS => (OTHERS => '1')));
				SIGNAL MAIN_GRAPH : RAM_FOR_GRAPH;

  BEGIN

  -- Component Instantiation
          uut: GraphCombine PORT MAP(ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, MAIN_GRAPH);


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 100 ns; -- wait until global set/reset completes
			ONE <= (OTHERS => (OTHERS => (OTHERS => '1')));
        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
