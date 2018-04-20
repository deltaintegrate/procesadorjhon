----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:10:59 04/19/2018 
-- Design Name: 
-- Module Name:    Rf - Behavioral 
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

entity Rf is
    Port ( Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           Dwr : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst : in std_logic;
           Crs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Crs2 : out  STD_LOGIC_VECTOR (31 downto 0));
end Rf;

architecture Behavioral of Rf is

	Type RAM_TYPE is array (0 to 31 ) of std_logic_vector (31 downto 0);
	
	signal RAM: RAM_TYPE := (others => x"00000000");

begin

	RAM(0) <= x"00000000";
	
process (Rs1,Rs2,Rd,Dwr,Rst,RAM)	
	begin
	if  RST = '1'  then
			RAM <=( others => x"00000000");
			Crs1 <= x"00000000" ;
		   Crs2 <=x"00000000" ;
		else 
		  Crs1 <= RAM(conv_integer(RS1));
		  Crs2 <= RAM(conv_integer(RS2));
		  
		  
		  if Rd /= "00000" then
				RAM(conv_integer(RD)) <= Dwr;
			end if;
		end if;
		
    end process;

end Behavioral;

