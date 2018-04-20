--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:24:21 04/19/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario/Desktop/LEONARDO/arquitectura/ALU/aluutb.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu
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
 
ENTITY aluutb IS
END aluutb;
 
ARCHITECTURE behavior OF aluutb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu
    PORT(
         Plu : IN  std_logic_vector(31 downto 0);
         Blu : IN  std_logic_vector(31 downto 0);
         Oplu : IN  std_logic_vector(5 downto 0);
         Result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Plu : std_logic_vector(31 downto 0) := (others => '0');
   signal Blu : std_logic_vector(31 downto 0) := (others => '0');
   signal Oplu : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal Result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          Plu => Plu,
          Blu => Blu,
          Oplu => Oplu,
          Result => Result
        );


 

   -- Stimulus process
   stim_proc: process
   begin		

		
		Oplu <=  "000000"; -- suma
		Plu <= "00000000000000000000000000000001"  ;
		Blu <=  "00000000000000000000000000000001"  ;
		wait for 100 ns;
		
		Oplu <=  "000001"; -- and
		Plu <= "10000000000000000000000000000001"  ;
		Blu <=  "10000000000000001000000000000001" ;
		wait for 100 ns;
		
		Oplu <= "000101" ; -- nand
		Plu <= "00000000000000000000000000000111"  ;
		Blu <=  "00000000000000000000000000000111"  ;
		wait for 100 ns;
		
		Oplu <= "000010"  ; -- or
		Plu <= "00000000001000000000000010000000"  ;
		Blu <=  "01000000000000010000000001000000"  ;
		wait for 100 ns;
		Oplu <= "000110" ; -- nor
		Plu <= "00000000000000000000000000110000"  ;
		Blu <=  "00000000000000000000000000000000" ;
		wait for 100 ns;
		Oplu <= "000011" ; -- xor
		Plu <= "00000000000000000000000000000101"  ;
		Blu <=  "00000000000000000000000000000000" ;
		wait for 100 ns;
		
		Oplu <= "000111" ; -- xnor
		Plu <= "00000000000000000000000000000000"  ;
		Blu <=  "00000000000000000000000000000101" ;
		wait for 100 ns;
		
		Oplu <= "000100" ; -- sub
		Plu <= "00000000000000000000000000000001"  ;
		Blu <=  "00000000000000000000000000000001" ;
		wait for 100 ns;
		


      -- insert stimulus here 

      wait;
   end process;

END;
