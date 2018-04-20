--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:18:31 04/19/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario/Desktop/LEONARDO/arquitectura/ControlUnit/UCtb.vhd
-- Project Name:  ControlUnit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UC
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
 
ENTITY UCtb IS
END UCtb;
 
ARCHITECTURE behavior OF UCtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UC
    PORT(
         AUC : IN  std_logic_vector(5 downto 0);
         BUC : IN  std_logic_vector(2 downto 0);
         CUC : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal AUC : std_logic_vector(5 downto 0) := (others => '0');
   signal BUC : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal CUC : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UC PORT MAP (
          AUC => AUC,
          BUC => BUC,
          CUC => CUC
        );


   -- Stimulus process
   stim_proc: process
   begin		
	
		AUC <= "101101";
      -- hold reset state for 100 ns.
      wait for 100 ns;

		AUC <= "111101";
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		AUC <= "100001";
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		AUC <= "101001";
      -- hold reset state for 100 ns.
      wait for 100 ns;			

      -- insert stimulus here 

      wait;
   end process;

END;
