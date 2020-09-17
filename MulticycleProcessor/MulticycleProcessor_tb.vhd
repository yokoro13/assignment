--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:47:09 09/08/2020
-- Design Name:   
-- Module Name:   Z:/ise/MulticycleProcessor/MulticycleProcessor_tb.vhd
-- Project Name:  MulticycleProcessor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MulticycleProcessor
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
 
ENTITY MulticycleProcessor_tb IS
END MulticycleProcessor_tb;
 
ARCHITECTURE behavior OF MulticycleProcessor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MulticycleProcessor
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         pc_out : OUT  std_logic_vector(31 downto 0);
         alu_result_out : OUT  std_logic_vector(31 downto 0);
         write_data_out : OUT  std_logic_vector(31 downto 0);
         instr_out : OUT  std_logic_vector(31 downto 0);
         write_reg_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal pc_out : std_logic_vector(31 downto 0);
   signal alu_result_out : std_logic_vector(31 downto 0);
   signal write_data_out : std_logic_vector(31 downto 0);
   signal instr_out : std_logic_vector(31 downto 0);
   signal write_reg_out : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MulticycleProcessor PORT MAP (
          clk => clk,
          reset => reset,
          pc_out => pc_out,
          alu_result_out => alu_result_out,
          write_data_out => write_data_out,
          instr_out => instr_out,
          write_reg_out => write_reg_out
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
		reset <= '1';
      wait for 100 ns;
		
		reset <= '0';

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
