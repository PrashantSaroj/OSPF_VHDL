library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- for addition & counting

entity makeRequestPacket is
	port (
		clock : in std_logic;
		advertisingRouter : in std_logic_vector(31 downto 0);
		packetOut : out std_logic_vector(7 downto 0);
		validOut : out std_logic:='0';
	);
end makeRequestPacket;

architecture makeRequestPacket_arc of makeRequestPacket is
	signal counter : std_logic_vector(7 downto 0):="00000000";
begin
	process(clock)
	begin
		case(counter) is
			when "00000000" => 
				validOut <= '1';
				packetOut <= "00000010";
				counter <= counter + 1;
			when "00000001" => 
				packetOut <= "00000011";
				counter <= counter + 1;
			when "00000010" => 
				packetOut <= "00000000";
				counter <= counter + 1;
			when "00000011" => 
				packetOut <= "10000000";
				counter <= counter + 1;
			when "00000100" => 
				packetOut <= "00000000";
				counter <= counter + 1;
			when "00000101" => 
				packetOut <= "00000000";
				counter <= counter + 1;
			when "00000110" => 
				packetOut <= "00000000";
				counter <= counter + 1;
			when "00000111" => 
				packetOut <= "00000000";
				counter <= counter + 1;
			when "00001000" => 
				packetOut <= "00000000";
				counter <= counter + 1;
			when "00001001" => 
				packetOut <= "00000000";
				counter <= counter + 1;
			when "00001010" => 
				packetOut <= "00000000";
				counter <= counter + 1;
			when "00001011" => 
				packetOut <= "00000000";
				counter <= counter + 1;
			when "00001100" => 
				packetOut <= advertisingRouter(31 downto 24);
				counter <= counter + 1;
			when "00001101" => 
				packetOut <= advertisingRouter(23 downto 16);
				counter <= counter + 1;
			when "00001110" => 
				packetOut <= advertisingRouter(15 downto 8);
				counter <= counter + 1;
			when "00001111" => 
				packetOut <= advertisingRouter(7 downto 0);
				counter <= counter + 1;
			when others =>
				validOut <= '0';
		end case;
	end process;
end makeRequestPacket_arc;