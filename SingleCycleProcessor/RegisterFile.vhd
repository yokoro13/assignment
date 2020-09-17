----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:22:16 06/16/2020 
-- Design Name: 
-- Module Name:    RegisterFile32 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( a1 : in  STD_LOGIC_VECTOR (4 downto 0);
           a2 : in  STD_LOGIC_VECTOR (4 downto 0);
           a3 : in  STD_LOGIC_VECTOR (4 downto 0);
           wd3 : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           we3 : in  STD_LOGIC;
           rd1 : out  STD_LOGIC_VECTOR (31 downto 0);
           rd2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
type reg_array is array (0 to 31) of std_logic_vector(31 downto 0); 
signal gp_reg : reg_array;
begin

rd1 <= x"00000000" when to_integer(unsigned(a1))=0 else gp_reg(to_integer(unsigned(a1))); 
rd2 <= x"00000000" when to_integer(unsigned(a2))=0 else gp_reg(to_integer(unsigned(a2))); 

process(clk, a1, a2)begin
	if(rising_edge(clk))then
		if(we3='1')then 
			gp_reg(to_integer(unsigned(a3))) <= wd3; 
		end if;
	end if; 
end process;


end Behavioral;

