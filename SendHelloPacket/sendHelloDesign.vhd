library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity send_hello_packet is
    port(
        version_number: in std_logic_vector(7 downto 0);
        packet_length: in std_logic_vector(15 downto 0);
        router_id: in std_logic_vector(31 downto 0);
        area_id: in std_logic_vector(31 downto 0);
        checksum: in std_logic_vector(15 downto 0);
        auType: in std_logic_vector(16 downto 0);
        authentication: in std_logic_vector(63 downto 0);
        networkMask: in std_logic_vector(31 downto 0);
        helloInterval:in std_logic_vector(15 downto 0);
        options: in std_logic_vector(7 downto 0);
        rtrPri: in std_logic_vector(7 downto 0);
        routerDeadInterval: in std_logic_vector(31 downto 0);
        designatedRouter: in std_logic_vector(31 downto 0);
        backupDesignatedRouter: in std_logic_vector(31 downto 0);
        neighbour_id1: in std_logic_vector(31 downto 0);
        neighbour_id2: in std_logic_vector(31 downto 0);
        neighbour_id3: in std_logic_vector(31 downto 0);
        neighbour_id4: in std_logic_vector(31 downto 0);
        neighbour_id5: in std_logic_vector(31 downto 0);
        neighbour_id6: in std_logic_vector(31 downto 0);
        neighbour_id7: in std_logic_vector(31 downto 0);
        neighbour_id8: in std_logic_vector(31 downto 0);
        clk: in std_logic;
        hello_packet_out: out std_logic_vector(7 downto 0);
        validity: out std_logic);
end send_hello_packet; 

--- Careful about vector and its reverse

architecture behavioural of send_hello_packet is
signal helloIntervalCounter: std_logic_vector(15 downto 0):="0000000000000000";
signal senderHelperCounter: std_logic_vector(6 downto 0):="0000000";
begin
-- process to assign values of field to packet out
process(clk)
begin
	  if(helloIntervalCounter = helloInterval) then
			case senderHelperCounter is
				 when "0000000"=>
						validity <= '1';
					  hello_packet_out <= version_number;
					  senderHelperCounter <= "0000001";
				 when "0000001"=>
					  hello_packet_out <= "00000001";
					  senderHelperCounter <= "0000010";
				 when "0000010"=>
					  hello_packet_out <= packet_length(15 downto 8);
					  senderHelperCounter <= "0000011";
				 when "0000011"=>
					  hello_packet_out <= packet_length(7 downto 0);
					  senderHelperCounter <= "0000100";
				 when "0000100"=>
					  hello_packet_out <= router_id(31 downto 24);
					  senderHelperCounter <= "0000101";
				 when "0000101"=>
					  hello_packet_out <= router_id(23 downto 16);
					  senderHelperCounter <= "0000110";
				 when "0000110"=>
					  hello_packet_out <= router_id(15 downto 8);
					  senderHelperCounter <= "0000111";
				 when "0000111"=>
					  hello_packet_out <= router_id(7 downto 0);
					  senderHelperCounter <= "0001000";
				 when "0001000"=>
					  hello_packet_out <= area_id(31 downto 24);
					  senderHelperCounter <= "0001001";
				 when "0001001"=>
					  hello_packet_out <= area_id(23 downto 16);
					  senderHelperCounter <= "0001010";
				 when "0001010"=>
					  hello_packet_out <= area_id(15 downto 8);
					  senderHelperCounter <= "0001011";
				 when "0001011"=>
					  hello_packet_out <= area_id(7 downto 0);
					  senderHelperCounter <= "0001100";
				 when "0001100"=>
					  hello_packet_out <= checksum(15 downto 8);
					  senderHelperCounter <= "0001101";
				 when "0001101"=>
					  hello_packet_out <= checksum(7 downto 0);
					  senderHelperCounter <= "0001110";
				 when "0001110"=>
					  hello_packet_out <= auType(15 downto 8);
					  senderHelperCounter <= "0001111";
				 when "0001111"=>
					  hello_packet_out <= auType(7 downto 0);
					  senderHelperCounter <= "0010000";
				 when "0010000"=>
					  hello_packet_out <= authentication(63 downto 56);
					  senderHelperCounter <= "0010001";
				 when "0010001"=>
					  hello_packet_out <= authentication(55 downto 48);
					  senderHelperCounter <= "0010010";
				 when "0010010"=>
					  hello_packet_out <= authentication(47 downto 40);
					  senderHelperCounter <= "0010011";
				 when "0010011"=>
					  hello_packet_out <= authentication(39 downto 32);
					  senderHelperCounter <= "0010100";
				 when "0010100"=>
					  hello_packet_out <= authentication(31 downto 24);
					  senderHelperCounter <= "0010101";
				 when "0010101"=>
					  hello_packet_out <= authentication(23 downto 16);
					  senderHelperCounter <= "0010110";
				 when "0010110"=>
					  hello_packet_out <= authentication(15 downto 8);
					  senderHelperCounter <= "0010111";
				 when "0010111"=>
					  hello_packet_out <= authentication(7 downto 0);
					  senderHelperCounter <= "0011000";
				 when "0011000"=>
					  hello_packet_out <= networkMask(31 downto 24);
					  senderHelperCounter <= "0011001";
				 when "0011001"=>
					  hello_packet_out <= networkMask(23 downto 16);
					  senderHelperCounter <= "0011010";
				 when "0011010"=>
					  hello_packet_out <= networkMask(15 downto 8);
					  senderHelperCounter <= "0011011";
				 when "0011011"=>
					  hello_packet_out <= networkMask(7 downto 0);
					  senderHelperCounter <= "0011100";
				 when "0011100"=>
					  hello_packet_out <= helloInterval(15 downto 8);
					  senderHelperCounter <= "0011101";
				 when "0011101"=>
					  hello_packet_out <= helloInterval(7 downto 0);
					  senderHelperCounter <= "0011110";
				 when "0011110"=>
					  hello_packet_out <= options(7 downto 0);
					  senderHelperCounter <= "0011111";
				 when "0011111"=>
					  hello_packet_out <= rtrPri(7 downto 0);
					  senderHelperCounter <= "0100000";
				 when "0100000"=>
					  hello_packet_out <= routerDeadInterval(31 downto 24);
					  senderHelperCounter <= "0100001";
				 when "0100001"=>
					  hello_packet_out <= routerDeadInterval(23 downto 16);
					  senderHelperCounter <= "0100010";
				 when "0100010"=>
					  hello_packet_out <= routerDeadInterval(15 downto 8);
					  senderHelperCounter <= "0100011";
				 when "0100011"=>
					  hello_packet_out <= routerDeadInterval(7 downto 0);
					  senderHelperCounter <= "0100100";
				 when "0100100"=>
					  hello_packet_out <= designatedRouter(31 downto 24);
					  senderHelperCounter <= "0100101";
				 when "0100101"=>
					  hello_packet_out <= designatedRouter(23 downto 16);
					  senderHelperCounter <= "0100110";
				 when "0100110"=>
					  hello_packet_out <= designatedRouter(15 downto 8);
					  senderHelperCounter <= "0100111";
				 when "0100111"=>
					  hello_packet_out <= designatedRouter(7 downto 0);
					  senderHelperCounter <= "0101000";
				 when "0101000"=>
					  hello_packet_out <= backupDesignatedRouter(31 downto 24);
					  senderHelperCounter <= "0101001";
				 when "0101001"=>
					  hello_packet_out <= backupDesignatedRouter(23 downto 16);
					  senderHelperCounter <= "0101010";
				 when "0101010"=>
					  hello_packet_out <= backupDesignatedRouter(15 downto 8);
					  senderHelperCounter <= "0101011";
				 when "0101011"=>
					  hello_packet_out <= backupDesignatedRouter(7 downto 0);
					  senderHelperCounter <= "0101100";
				 when "0101100"=>
					  hello_packet_out <= neighbour_id1(31 downto 24);
					  senderHelperCounter <= "0101101";
				 when "0101101"=>
					  hello_packet_out <= neighbour_id1(23 downto 16);
					  senderHelperCounter <= "0101110";
				 when "0101110"=>
					  hello_packet_out <= neighbour_id1(15 downto 8);
					  senderHelperCounter <= "0101111";
				 when "0101111"=>
					  hello_packet_out <= neighbour_id1(7 downto 0);
					  senderHelperCounter <= "0110000";
				 when "0110000"=>
					  hello_packet_out <= neighbour_id2(31 downto 24);
					  senderHelperCounter <= "0110001";
				 when "0110001"=>
					  hello_packet_out <= neighbour_id2(23 downto 16);
					  senderHelperCounter <= "0110010";
				 when "0110010"=>
					  hello_packet_out <= neighbour_id2(15 downto 8);
					  senderHelperCounter <= "0110011";
				 when "0110011"=>
					  hello_packet_out <= neighbour_id2(7 downto 0);
					  senderHelperCounter <= "0110100";
				 when "0110100"=>
					  hello_packet_out <= neighbour_id3(31 downto 24);
					  senderHelperCounter <= "0110101";
				 when "0110101"=>
					  hello_packet_out <= neighbour_id3(23 downto 16);
					  senderHelperCounter <= "0110110";
				 when "0110110"=>
					  hello_packet_out <= neighbour_id3(15 downto 8);
					  senderHelperCounter <= "0110111";
				 when "0110111"=>
					  hello_packet_out <= neighbour_id3(7 downto 0);
					  senderHelperCounter <= "0111000";
				 when "0111000"=>
					  hello_packet_out <= neighbour_id4(31 downto 24);
					  senderHelperCounter <= "0111001";
				 when "0111001"=>
					  hello_packet_out <= neighbour_id4(23 downto 16);
					  senderHelperCounter <= "0111010";
				 when "0111010"=>
					  hello_packet_out <= neighbour_id4(15 downto 8);
					  senderHelperCounter <= "0111011";
				 when "0111011"=>
					  hello_packet_out <= neighbour_id4(7 downto 0);
					  senderHelperCounter <= "0111100";
				 when "0111100"=>
					  hello_packet_out <= neighbour_id5(31 downto 24);
					  senderHelperCounter <= "0111101";
				 when "0111101"=>
					  hello_packet_out <= neighbour_id5(23 downto 16);
					  senderHelperCounter <= "0111110";
				 when "0111110"=>
					  hello_packet_out <= neighbour_id5(15 downto 8);
					  senderHelperCounter <= "0111111";
				 when "0111111"=>
					  hello_packet_out <= neighbour_id5(7 downto 0);
					  senderHelperCounter <= "1000000";
				 when "1000000"=>
					  hello_packet_out <= neighbour_id6(31 downto 24);
					  senderHelperCounter <= "1000001";
				 when "1000001"=>
					  hello_packet_out <= neighbour_id6(23 downto 16);
					  senderHelperCounter <= "1000010";
				 when "1000010"=>
					  hello_packet_out <= neighbour_id6(15 downto 8);
					  senderHelperCounter <= "1000011";
				 when "1000011"=>
					  hello_packet_out <= neighbour_id6(7 downto 0);
					  senderHelperCounter <= "1000100";
				 when "1000100"=>
					  hello_packet_out <= neighbour_id7(31 downto 24);
					  senderHelperCounter <= "1000101";
				 when "1000101"=>
					  hello_packet_out <= neighbour_id7(23 downto 16);
					  senderHelperCounter <= "1000110";
				 when "1000110"=>
					  hello_packet_out <= neighbour_id7(15 downto 8);
					  senderHelperCounter <= "1000111";
				 when "1000111"=>
					  hello_packet_out <= neighbour_id7(7 downto 0);
					  senderHelperCounter <= "1001000";
				 when "1001000"=>
					  hello_packet_out <= neighbour_id8(31 downto 24);
					  senderHelperCounter <= "1001001";
				 when "1001001"=>
					  hello_packet_out <= neighbour_id8(23 downto 16);
					  senderHelperCounter <= "1001010";
				 when "1001010"=>
					  hello_packet_out <= neighbour_id8(15 downto 8);
					  senderHelperCounter <= "1001011";
				 when "1001011"=>
					  hello_packet_out <= neighbour_id8(7 downto 0);
					  senderHelperCounter <= "1001100";
				 when others =>
						hello_packet_out <= "00000000";
						senderHelperCounter <= "0000000";
					  validity <= '0';
					  helloIntervalCounter <= "0000000000000000";
			end case;
	  else 
			helloIntervalCounter <= helloIntervalCounter + 1;
	  end if;
end process;
end architecture;
