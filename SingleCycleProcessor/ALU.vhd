----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    14:53:17 07/14/2020
-- Design Name:
-- Module Name:    ALU - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( ALUControl : in  STD_LOGIC_VECTOR (2 downto 0);
           SrcA : in  STD_LOGIC_VECTOR (31 downto 0);
           SrcB : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUResult : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
signal S : STD_LOGIC_VECTOR(31 downto 0);
signal BB : STD_LOGIC_VECTOR(31 downto 0);
signal result : STD_LOGIC_VECTOR (31 downto 0);
begin

	BB <= (not SrcB) when (ALUControl(2)='1') else SrcB;

	-- MSB = 1 => sub
	S <= SrcA + BB + ALUControl(2);

	ALUResult <= result;
	Zero <= '1' when result=x"00000000" else '0';

process(SrcA, SrcB, ALUControl, S, BB, result)
begin
	case ALUControl(1 downto 0) is
		when "00" =>
			result <= SrcA and BB;
		when "01" =>
			result <= SrcA or BB;
		when "10" =>
			result <= S(31 downto 0);
		when "11" =>
			result <= x"0000000" & "000" & S(31);
		when others =>
			result <= x"00000000";
	end case;
end process;
end Behavioral;
