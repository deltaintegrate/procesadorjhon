----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:45:33 04/18/2018 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
    Port ( Dir : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           dirout : out  STD_LOGIC_VECTOR (31 downto 0));
end datapath;

architecture Behavioral of datapath is

	COMPONENT npc
	PORT(
		Address : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;
		clk : IN std_logic;          
		pc_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;


	
	COMPONENT programcounter
	PORT(
		Addressp : IN std_logic_vector(31 downto 0);
		rstp : IN std_logic;
		clkp : IN std_logic;          
		pc_outp : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;	
	
	COMPONENT sumador
	PORT(
		A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);          
		output : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	signal auxsum : std_logic_vector(31 downto 0);
	signal auxnpc : std_logic_vector(31 downto 0);	

begin


	Inst_npc: npc PORT MAP(
		Address => auxsum,
		rst => rst,
		clk => clk,
		pc_out =>auxnpc 
	);
	
	Inst_programcounter3: programcounter PORT MAP(
		Addressp =>auxnpc ,
		rstp =>rst ,
		pc_outp => dirout,
		clkp =>clk 
	);	


	Inst_sumador: sumador PORT MAP(
		A => "00000000000000000000000000000100",
		B => Dir ,
		output => auxsum
	);	

end Behavioral;

