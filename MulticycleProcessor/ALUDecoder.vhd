library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUDecoder is
    Port (
    	Funct : in  STD_LOGIC_VECTOR (5 downto 0);
      ALUOp : in STD_LOGIC_VECTOR (1 downto 0);
      ALUControl : out  STD_LOGIC_VECTOR (2 downto 0)
    );
end ALUDecoder;

architecture Behavioral of ALUDecoder is

begin
	process(ALUOp, Funct) begin 
		ALUControl <= "000"; 
		if (ALUOp="00") then 
			ALUControl <= "010"; 
		elsif (ALUOp(0)='1') then 
			ALUControl <= "110"; 
		elsif (ALUOp(1)='1') then 
			case Funct is  
				when "100000" => ALUControl <= "010"; 
				when "100010" => ALUControl <= "110"; 
				when "100100" => ALUControl <= "000"; 
				when "100101" => ALUControl <= "001"; 
				when "101010" => ALUControl <= "111"; 
				when others => null; 
			end case;
		end if;
	end process; 
end Behavioral;
