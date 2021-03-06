--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:22:10 08/21/2020
-- Design Name:   
-- Module Name:   Z:/ise/SingleCycleProcessor/SingleCycleProcessor_tb.vhd
-- Project Name:  SingleCycleProcessor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SingleCycleProcessor
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
 
ENTITY SingleCycleProcessor_tb IS
END SingleCycleProcessor_tb;
 
ARCHITECTURE behavior OF SingleCycleProcessor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SingleCycleProcessor
    PORT(
      clk : in  STD_LOGIC;
      reset : in std_logic;
      pc_out : out std_logic_vector(31 downto 0);
      alu_result_out : out std_logic_vector(31 downto 0);
      write_data_out : out std_logic_vector(31 downto 0);
      instr_out : out std_logic_vector(31 downto 0);
      write_reg_out : out std_logic_vector(4 downto 0);
      result_out : out std_logic_vector(31 downto 0)
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
   signal result_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SingleCycleProcessor PORT MAP (
          clk => clk,
          reset => reset,
          pc_out => pc_out,
          alu_result_out => alu_result_out,
          write_data_out => write_data_out,
          instr_out => instr_out,
          write_reg_out => write_reg_out,
          result_out => result_out
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
      wait for clk_period*10;
		reset <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
