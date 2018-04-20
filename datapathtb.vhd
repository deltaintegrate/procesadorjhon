--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:01:18 04/18/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario/Desktop/LEONARDO/arquitectura/datapath/datapathtb.vhd
-- Project Name:  datapath
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: datapath
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY datapathtb IS
END datapathtb;
 
ARCHITECTURE behavior OF datapathtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT datapath
    PORT(
         Dir : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         dirout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Dir : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal dirout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: datapath PORT MAP (
          Dir => Dir,
          clk => clk,
          rst => rst,
          dirout => dirout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Dir <= "00010000000000000000000010001000";
		rst <= '1';
      wait for 100 ns;

		Dir <= "00010000000000000000000010001000";
		rst <= '1';
      wait for 100 ns;

		Dir <= "00010000001000100001100100010001";
		rst <= '0';
      wait for 100 ns;

		Dir <= "00010000000000001000000010001000";
		rst <= '0';
      wait for 100 ns;

		Dir <= "00010000000010000000000010001000";
		rst <= '0';
      wait for 100 ns;

		Dir <= "00010000000000001000000010001000";
		rst <= '0';
      wait for 100 ns;

		Dir <= "00010000010000000100000010001000";
		rst <= '0';
      wait for 100 ns;		
		

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
