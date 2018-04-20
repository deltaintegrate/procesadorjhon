----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:23:02 04/15/2018 
-- Design Name: 
-- Module Name:    npc - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity npc is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           pc_out : out  STD_LOGIC_VECTOR (31 downto 0));
end npc;

architecture Behavioral of npc is

	COMPONENT programcounter
	PORT(
		Addressp : IN std_logic_vector(31 downto 0);
		rstp : IN std_logic;
		clkp : IN std_logic;          
		pc_outp : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	signal outputp : std_logic_vector(31 downto 0);


begin

	Inst_programcounter1: programcounter PORT MAP(
		Addressp => Address,
		rstp => rst,
		pc_outp =>outputp ,
		clkp =>clk 
	);
	
	
		Inst_programcounter2: programcounter PORT MAP(
		Addressp =>outputp ,
		rstp => rst,
		pc_outp => pc_out,
		clkp => clk
	);




end Behavioral;

