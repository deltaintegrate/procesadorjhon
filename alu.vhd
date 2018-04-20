----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:47 04/19/2018 
-- Design Name: 
-- Module Name:    alu - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
    Port ( Plu : in  STD_LOGIC_VECTOR (31 downto 0);
           Blu : in  STD_LOGIC_VECTOR (31 downto 0);
           Oplu : in  STD_LOGIC_VECTOR (5 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end alu;

architecture Behavioral of alu is

begin

process (Plu,Blu,Oplu)
	begin 
		case (Oplu) is
			when "000000" => -- equivale al op3 de la suma de enteros
				Result <= Plu + Blu  ;
			when "000001" => -- equivale al op3 del and para los enteros
				Result <= Plu AND Blu ;
			when "000101" =>-- equivale al and not para los enteros
				Result <= (Plu AND (NOT Blu));
	      when "000010" =>-- equivale al or para los enteros
	         Result <= Plu OR Blu ;
	      when "000110" => --equivale al or not para los enteros
	         Result <= NOT(Plu OR Blu);
	      when "000011" =>--equivale al xor  para los enteros
	         Result <= Plu XOR Blu ;
	      when "000111" =>--equivale al Xnor para los enteros
	         Result <= Plu XNOR Blu ;
			when "000100" => -- equivale al op3 de la resta de enteros
				Result <= Plu - Blu ;

			when others =>
				Result <= "00000000000000000000000000000000";
   end case;
					
			
end process;

end Behavioral;

