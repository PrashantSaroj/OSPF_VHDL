library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 
use IEEE.numeric_std.all;       -- for addition & counting
USE WORK.MY_PACKAGE.ALL;
entity ls_req is
	port (
		clock : IN std_logic;
		graph: in RAM_FOR_GRAPH;
		packet_num: out std_logic_vector(7 downto 0);
		valid_out1: out std_logic:='0';
		valid_out2: out std_logic:='0';
		valid_out3: out std_logic:='0';
		valid_out4: out std_logic:='0';
		valid_out5: out std_logic:='0';
		valid_out6: out std_logic:='0';
		valid_out7: out std_logic:='0';
		valid_out8: out std_logic:='0';
		packet_out1: out std_logic_vector(7 downto 0):="00000000";
		packet_out2: out std_logic_vector(7 downto 0):="00000000";
		packet_out3: out std_logic_vector(7 downto 0):="00000000";
		packet_out4: out std_logic_vector(7 downto 0):="00000000";
		packet_out5: out std_logic_vector(7 downto 0):="00000000";
		packet_out6: out std_logic_vector(7 downto 0):="00000000";
		packet_out7: out std_logic_vector(7 downto 0):="00000000";
		packet_out8: out std_logic_vector(7 downto 0):="00000000"
	);
end ls_req;

architecture arc of ls_req is
	signal row, column: integer range 0 to 31 := 0;
	signal counter : std_logic_vector(4 downto 0):="00000";
	signal valid: std_logic:='0';
	signal found : std_logic_vector(7 downto 0):="00000000";
begin
	process(clock)
	begin
		if (rising_edge(clock)) then
			if (valid = '0') then
				if (row=0 or row=1 or row=2 or row=3 or row=4 or row=5 or row=6 or row=7 or row=8 or row=9 or row=10 or row=11 or row=12 or row=13 or row=14 or row=15 or row=16 or row=17 or row=18 or row=19 or row=20 or row=21 or row=22 or row=23 or row=24 or row=25 or row=26 or row=27 or row=28 or row=29 or row=30) then
					if (column=0 or column=1 or column=2 or column=3 or column=4 or column=5 or column=6 or column=7 or column=8 or column=9 or column=10 or column=11 or column=12 or column=13 or column=14 or column=15 or column=16 or column=17 or column=18 or column=19 or column=20 or column=21 or column=22 or column=23 or column=24 or column=25 or column=26 or column=27 or column=28 or column=29 or column=30) then
						if (not (graph(row,column) = "11111111")) then
							row <= row + 1;
							column <= 0;
						else
							column <= column + 1;
						end if;
					elsif (column = 31) then
						if (not (graph(row,column) = "11111111")) then
							row <= row + 1;
							column <= 0;
						else
							valid <= '1';
							found <= std_logic_vector(to_unsigned(row,found'length));
							row <= row + 1;
							column <= 0;
						end if;
					end if;
				elsif (row = 31) then
					if (column=0 or column=1 or column=2 or column=3 or column=4 or column=5 or column=6 or column=7 or column=8 or column=9 or column=10 or column=11 or column=12 or column=13 or column=14 or column=15 or column=16 or column=17 or column=18 or column=19 or column=20 or column=21 or column=22 or column=23 or column=24 or column=25 or column=26 or column=27 or column=28 or column=29 or column=30) then
						if (not (graph(row,column) = "11111111")) then
							row <= 0;
							column <= 0;
						else
							column <= column + 1;
						end if;
					elsif (column = 31) then
						if (not (graph(row,column) = "11111111")) then
							row <= 0;
							column <= 0;
						else
							valid <= '1';
							found <= std_logic_vector(to_unsigned(row,found'length));
							row <= 0;
							column <= 0;
						end if;
					end if;
				end if;
			elsif (valid = '1') then
				valid_out1 <= '1';
				valid_out2 <= '1';
				valid_out3 <= '1';
				valid_out4 <= '1';
				valid_out5 <= '1';
				valid_out6 <= '1';
				valid_out7 <= '1';
				valid_out8 <= '1';
				packet_num <= found;
				case(counter) is
					when "00000" => 
						counter <= counter + 1;
						packet_out1 <= "00000010";
						packet_out2 <= "00000010";
						packet_out3 <= "00000010";
						packet_out4 <= "00000010";
						packet_out5 <= "00000010";
						packet_out6 <= "00000010";
						packet_out7 <= "00000010";
						packet_out8 <= "00000010";
					when "00001" => 
						counter <= counter + 1;
						packet_out1 <= "00000011";
						packet_out2 <= "00000011";
						packet_out3 <= "00000011";
						packet_out4 <= "00000011";
						packet_out5 <= "00000011";
						packet_out6 <= "00000011";
						packet_out7 <= "00000011";
						packet_out8 <= "00000011";
					when "00010" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "00011" => 
						counter <= counter + 1;
						packet_out1 <= "10000000";
						packet_out2 <= "10000000";
						packet_out3 <= "10000000";
						packet_out4 <= "10000000";
						packet_out5 <= "10000000";
						packet_out6 <= "10000000";
						packet_out7 <= "10000000";
						packet_out8 <= "10000000";
					when "00100" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "00101" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "00110" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "00111" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "01000" => 
						counter <= counter + 1;
						packet_out1 <= "11000000";
						packet_out2 <= "11000000";
						packet_out3 <= "11000000";
						packet_out4 <= "11000000";
						packet_out5 <= "11000000";
						packet_out6 <= "11000000";
						packet_out7 <= "11000000";
						packet_out8 <= "11000000";
					when "01001" => 
						counter <= counter + 1;
						packet_out1 <= "10101000";
						packet_out2 <= "10101000";
						packet_out3 <= "10101000";
						packet_out4 <= "10101000";
						packet_out5 <= "10101000";
						packet_out6 <= "10101000";
						packet_out7 <= "10101000";
						packet_out8 <= "10101000";
					when "01010" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "01011" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "01100" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "01101" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "01110" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "01111" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "10000" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "10001" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "10010" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "10011" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "10100" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "10101" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "10110" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "10111" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "11000" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "11001" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "11010" => 
						counter <= counter + 1;
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
					when "11011" => 
						counter <= counter + 1;
						packet_out1 <= found;
						packet_out2 <= found;
						packet_out3 <= found;
						packet_out4 <= found;
						packet_out5 <= found;
						packet_out6 <= found;
						packet_out7 <= found;
						packet_out8 <= found;
					when others =>
						counter <= "00000";
						valid <= '0';
						found <= "00000000";
						packet_num <= "00000000";
						valid_out1 <= '0';
						valid_out2 <= '0';
						valid_out3 <= '0';
						valid_out4 <= '0';
						valid_out5 <= '0';
						valid_out6 <= '0';
						valid_out7 <= '0';
						valid_out8 <= '0';
						packet_out1 <= "00000000";
						packet_out2 <= "00000000";
						packet_out3 <= "00000000";
						packet_out4 <= "00000000";
						packet_out5 <= "00000000";
						packet_out6 <= "00000000";
						packet_out7 <= "00000000";
						packet_out8 <= "00000000";
				end case;
			end if;
		end if;
	end process;

end arc;