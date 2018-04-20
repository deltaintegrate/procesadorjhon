--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:30:50 04/19/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario/Desktop/LEONARDO/arquitectura/RegisterFile/Rftb.vhd
-- Project Name:  RegisterFile
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Rf
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
 
ENTITY Rftb IS
END Rftb;
 
ARCHITECTURE behavior OF Rftb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Rf
    PORT(
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rd : IN  std_logic_vector(4 downto 0);
         Dwr : IN  std_logic_vector(31 downto 0);
         Rst : IN  std_logic;
         Crs1 : OUT  std_logic_vector(31 downto 0);
         Crs2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rd : std_logic_vector(4 downto 0) := (others => '0');
   signal Dwr : std_logic_vector(31 downto 0) := (others => '0');
   signal Rst : std_logic := '0';

 	--Outputs
   signal Crs1 : std_logic_vector(31 downto 0);
   signal Crs2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Rf PORT MAP (
          Rs1 => Rs1,
          Rs2 => Rs2,
          Rd => Rd,
          Dwr => Dwr,
          Rst => Rst,
          Crs1 => Crs1,
          Crs2 => Crs2
        );

 

   -- Stimulus process
   stim_proc: process
   begin
	
		Rs1 <= "00000";
		Rs2 <="00001"; 
		Rd <="00001";
		Dwr <= "00000000000000000000000000000000";
		wait for 20 ns;
		
		Rs1 <= "00001";
		Rs2 <="00001";
		Rd <="00001";
		Dwr <= "00000000000000000000000000001111";
		wait for 20 ns;
		
		Rs1 <= "00000";
		Rs2 <="00000";
		Rd <="00011";
		Dwr <= "00000000000000000000000000011111";
		wait for 20 ns;
		
		Rs1 <= "00000";
		Rs2 <="00011";
		Rd <= "00000";
		Dwr <= "00000000000001010001000100011111";		
		wait for 20 ns;
		
		Rs1 <= "00000";
		Rs2 <="00001";
		Rd <="00000";
		Dwr <= "00000000000000000000000000001111";
		wait for 20 ns;

		Rs1 <= "00001";
		Rs2 <="00001";
		Rd <="00000";
		Dwr <= "00000000000000000000000000001111";
		wait for 20 ns;		

		Rs1 <= "00000";
		Rs2 <="00001"; 
		Rd <="00000";
		Dwr <= "00000000000000000000000000000000";
		wait for 20 ns;

		Rst <= '1';
		
		wait for 20 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
