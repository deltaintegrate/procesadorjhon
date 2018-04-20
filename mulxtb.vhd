--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:53:56 04/19/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario/Desktop/LEONARDO/arquitectura/mux/mulxtb.vhd
-- Project Name:  mux
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mulx
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
 
ENTITY mulxtb IS
END mulxtb;
 
ARCHITECTURE behavior OF mulxtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mulx
    PORT(
         Amux : IN  std_logic_vector(31 downto 0);
         Bmux : IN  std_logic_vector(31 downto 0);
         sel : IN  std_logic;
         Omux : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Amux : std_logic_vector(31 downto 0) := (others => '0');
   signal Bmux : std_logic_vector(31 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal Omux : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mulx PORT MAP (
          Amux => Amux,
          Bmux => Bmux,
          sel => sel,
          Omux => Omux
        );


   -- Stimulus process
   stim_proc: process
   begin
	
	
	
		Amux<="00000000000000000000000000000000";
		bmux<="00000000000001011000011000100000";		
		sel <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;

		Amux<="00000000000000000000000000000000";
		bmux<="00000000000001011000011000100000";		
		sel <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;

		Amux<="00000000000000000000000000000000";
		bmux<="00000000000001011000011000100000";		
		sel <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;

		Amux<="00000000000000000000000000000000";
		bmux<="00000000000001011000011000100000";		
		sel <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;

		Amux<="00000000000000000000000000000000";
		bmux<="00000000000001011000011000100000";		
		sel <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;

		Amux<="00000000000000000000000000000000";
		bmux<="00000000000000101100001100010000";		
		sel <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;		


      -- insert stimulus here 

      wait;
   end process;

END;
