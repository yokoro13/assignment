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

entity InstructionMemory is
    Port ( 
		a : in  STD_LOGIC_VECTOR (31 downto 0);
		clk : in std_logic;
        rd : out  STD_LOGIC_VECTOR (31 downto 0));
end InstructionMemory;

architecture Behavioral of InstructionMemory is
type data_array is array (0 to 31) of std_logic_vector(31 downto 0);

signal addr : STD_LOGIC_VECTOR (4 downto 0);

constant gp_reg : data_array := (
	x"20020005",
	x"2003000c",
	x"2067fff7", 
	x"00e22025",
	x"00642824",
	x"00a42820",
	x"10a7000a",
	x"0064202a",
	x"10800001",
	x"20050000",
	x"00e2202a",
	x"00853820",
	x"00e23822",
	x"ac670044",
	x"8c020050",
	x"08000011",
	x"20020001",
	x"ac020054",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000",
	x"00000000"
);
begin

	process(clk)
	begin
		if (rising_edge(clk)) then
			addr <= a(4 downto 0);
			rd <= gp_reg(to_integer(unsigned(addr)));
		end if;
	end process;

end Behavioral;
