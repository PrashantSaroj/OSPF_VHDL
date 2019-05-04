library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity send_ack is
	port (
		version_number: in std_logic_vector(7 downto 0);
        packet_length: in std_logic_vector(15 downto 0);
        router_id: in std_logic_vector(31 downto 0);
        area_id: in std_logic_vector(31 downto 0);
        checksum: in std_logic_vector(15 downto 0);
        auType: in std_logic_vector(16 downto 0);
        authentication: in std_logic_vector(63 downto 0);
        linkStateID: in std_logic_vector(32 downto 0);
        advertisingRouter: in std_logic_vector(32 downto 0);
        lsSequenceNumber: in std_logic_vector(32 downto 0);
		clk: in std_logic;
        ack_packet_out: out std_logic_vector(7 downto 0);
        validity: out std_logic:=0
	);
end send_ack;

architecture behavioural of send_ack is

	signal counter: std_logic_vector(15 downto 0);

begin
	process(clk)
	begin
		case counter is
			when "0000000000000000" => 
				validity <= '1';
				ack_packet_out <= version_number;
				counter <= counter + 1;
			when "0000000000000001" =>
				ack_packet_out <= "00000101";
				counter <= counter + 1;
			when "0000000000000010" =>
				ack_packet_out <= packet_length(15 downto 8);
				counter <= counter + 1;
			when "0000000000000011" =>
				ack_packet_out <= packet_length(7 downto 0);
				counter <= counter + 1;
			when "0000000000000100" =>
				ack_packet_out <= router_id(31 downto 24);
				counter <= counter + 1;
			when "0000000000000101" =>
				ack_packet_out <= router_id(23 downto 16);
				counter <= counter + 1;
			when "0000000000000110" =>
				ack_packet_out <= router_id(15 downto 8);
				counter <= counter + 1;
			when "0000000000000111" =>
				ack_packet_out <= router_id(7 downto 0);
				counter <= counter + 1;
			when "0000000000001000" =>
				ack_packet_out <= area_id(31 downto 24);
				counter <= counter + 1;
			when "0000000000001001" =>
				ack_packet_out <= area_id(23 downto 16);
				counter <= counter + 1;
			when "0000000000001010" =>
				ack_packet_out <= area_id(15 downto 8);
				counter <= counter + 1;
			when "0000000000001011" =>
				ack_packet_out <= area_id(7 downto 0);
				counter <= counter + 1;
			when "0000000000001100" =>
				ack_packet_out <= checksum(15 downto 8);
				counter <= counter + 1;
			when "0000000000001101" =>
				ack_packet_out <= checksum(7 downto 0);
				counter <= counter + 1;
			when "0000000000001110" =>
				ack_packet_out <= auType(15 downto 8);
				counter <= counter + 1;
			when "0000000000001111" =>
				ack_packet_out <= auType(7 downto 0);
				counter <= counter + 1;
			when "0000000000010000" =>
				ack_packet_out <= authentication(63 downto 56);
				counter <= counter + 1;
			when "0000000000010001" =>
				ack_packet_out <= authentication(55 downto 48);
				counter <= counter + 1;
			when "0000000000010010" =>
				ack_packet_out <= authentication(47 downto 40);
				counter <= counter + 1;
			when "0000000000010011" =>
				ack_packet_out <= authentication(39 downto 32);
				counter <= counter + 1;
			when "0000000000010100" =>
				ack_packet_out <= authentication(31 downto 24);
				counter <= counter + 1;
			when "0000000000010101" =>
				ack_packet_out <= authentication(23 downto 16);
				counter <= counter + 1;
			when "0000000000010110" =>
				ack_packet_out <= authentication(15 downto 8);
				counter <= counter + 1;
			when "0000000000010111" =>
				ack_packet_out <= authentication(7 downto 0);
				counter <= counter + 1;
			when "0000000000011000" =>
				ack_packet_out <= linkStateID(31 downto 24);
				counter <= counter + 1;
			when "0000000000011001" =>
				ack_packet_out <= linkStateID(23 downto 16);
				counter <= counter + 1;
			when "0000000000011010" =>
				ack_packet_out <= linkStateID(15 downto 8);
				counter <= counter + 1;
			when "0000000000011011" =>
				ack_packet_out <= linkStateID(7 downto 0);
				counter <= counter + 1;
			when "0000000000011100" =>
				ack_packet_out <= advertisingRouter(31 downto 24);
				counter <= counter + 1;
			when "0000000000011101" =>
				ack_packet_out <= advertisingRouter(23 downto 16);
				counter <= counter + 1;
			when "0000000000011110" =>
				ack_packet_out <= advertisingRouter(15 downto 8);
				counter <= counter + 1;
			when "0000000000011111" =>
				ack_packet_out <= advertisingRouter(7 downto 0);
				counter <= counter + 1;
			when "0000000000100000" =>
				ack_packet_out <= lsSequenceNumber(31 downto 24);
				counter <= counter + 1;
			when "0000000000100001" =>
				ack_packet_out <= lsSequenceNumber(23 downto 16);
				counter <= counter + 1;
			when "0000000000100010" =>
				ack_packet_out <= lsSequenceNumber(15 downto 8);
				counter <= counter + 1;
			when "0000000000100011" =>
				ack_packet_out <= lsSequenceNumber(7 downto 0);
				counter <= counter + 1;
			when others =>
				counter <= "0000000000000000";
				validity <= '0';
				ack_packet_out <= "00000000";
		end case;
	end process;

end behavioural;