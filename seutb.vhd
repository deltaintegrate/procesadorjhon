--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:05:49 04/18/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario/Desktop/LEONARDO/arquitectura/SignExtensionUnit/seutb.vhd
-- Project Name:  SignExtensionUnit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SEU
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
 
ENTITY seutb IS
END seutb;
 
ARCHITECTURE behavior OF seutb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SEU
    PORT(
         inseu : IN  std_logic_vector(12 downto 0);
         outseu : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inseu : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal outseu : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEU PORT MAP (
          inseu => inseu,
          outseu => outseu
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin

		inseu <="0000000000000";
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		inseu <="1111111111111";
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		inseu <="0000101000100";
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		inseu <="1000001100000";
      -- hold reset state for 100 ns.
      wait for 100 ns;			

      wait;
   end process;

END;
