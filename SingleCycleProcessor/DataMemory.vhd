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

entity DataMemory is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           wd : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           we : in  STD_LOGIC;
           rd : out  STD_LOGIC_VECTOR (31 downto 0));
end DataMemory;

architecture Behavioral of DataMemory is
signal addr : STD_LOGIC_VECTOR (4 downto 0);
type data_array is array (0 to 31) of std_logic_vector(31 downto 0);
signal gp_reg : data_array;
begin

	addr <= a(4 downto 0);
	rd <= gp_reg(to_integer(unsigned(addr)));

	process(clk, a)begin
		if(rising_edge(clk))then
			if(we='1')then
				gp_reg(to_integer(unsigned(addr))) <= wd;
			end if;
		end if;
	end process;

end Behavioral;
