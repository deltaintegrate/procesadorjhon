--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:46:22 04/15/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario/Desktop/LEONARDO/arquitectura/pc/tbtpc.vhd
-- Project Name:  pc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: programcounter
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
 
ENTITY tbtpc IS
END tbtpc;
 
ARCHITECTURE behavior OF tbtpc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT programcounter
    PORT(
         Address : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         pc_out : OUT  std_logic_vector(31 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal pc_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: programcounter PORT MAP (
          Address => Address,
          rst => rst,
          pc_out => pc_out,
          clk => clk
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
      
		
		Address <= "00000000000000000000001000101000";
		rst <= '0';
		
      wait for 100 ns;

		Address <= "00000000000000000000001000101000";
		rst <= '1';
		
      wait for 100 ns;		

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
