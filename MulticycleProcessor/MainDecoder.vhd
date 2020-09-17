library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainDecoder is
    Port (  
            clk : in std_logic;
            reset : in std_logic;
            Op : in  STD_LOGIC_VECTOR (5 downto 0);
            MemWrite : out  STD_LOGIC;
            IorD : out  STD_LOGIC;
            IRWrite : out std_logic;
            PCWrite : out std_logic;
            Branch : out  STD_LOGIC;
            PCSrc : out std_logic;
            ALUSrcA : out  STD_LOGIC;
            ALUSrcB : out  STD_LOGIC_VECTOR(1 downto 0);
            RegDst : out  STD_LOGIC;
            MemtoReg : out  STD_LOGIC;
            RegWrite : out  STD_LOGIC;
            ALUOp : out STD_LOGIC_VECTOR (1 downto 0)
    );
end MainDecoder;

architecture Behavioral of MainDecoder is

  signal state : STD_LOGIC_VECTOR (3 downto 0);
  signal NxtSt : STD_LOGIC_VECTOR (3 downto 0);
  
  constant r_type : STD_LOGIC_VECTOR (5 downto 0) := "000000";
  constant lw : STD_LOGIC_VECTOR (5 downto 0) := "100011";
  constant sw : STD_LOGIC_VECTOR (5 downto 0) := "101011";
  constant beq : STD_LOGIC_VECTOR (5 downto 0) := "000100";
  constant addi : STD_LOGIC_VECTOR (5 downto 0) := "001000";

begin

  NxtSt <= "0000" when state="0100" or state="0101" or 
                       state="0111" or state="1000" or 
                       state="1010" else
           "0001" when state="0000" else 
           "0010" when state="0001" and (Op=lw or OP=sw) else
           "0011" when state="0010" and Op=lw else 
           "0100" when state="0011" else
           "0101" when state="0010" and Op=sw else 
           "0110" when state="0001" and Op=r_type else 
           "0111" when state="0110" else 
           "1000" when state="0001" and Op=beq else 
           "1001" when state="0001" and Op=addi else 
           "1010" when state="1001" else "0000";

  process(clk, reset)
  begin
    if (reset = '1') then
      state <= "0000";
    elsif (rising_edge(clk)) then
      state <= NxtSt;
    end if;
  end process;

  MemWrite <= '1' when state="0101" else '0';
  IorD <= '1' when state="0011" or state="0101" else '0';
  IRWrite <= '1' when state="0000" else '0';
  PCWrite <= '1' when state="0000" else '0';
  Branch <= '1' when state="1000" else '0';
  PCSrc <= '1' when state="1000" else '0';
  ALUSrcA <= '1' when state="0010" or state="0110" or state="1000" or state="1001" else '0';
  ALUSrcB <= "11" when state="0001" else
             "10" when state="0010" or state="1001" else
             "01" when state="0000" else
             "00";
  RegDst <= '1' when state="0111" else '0';
  MemtoReg <= '1' when state="0100" else '0';
  RegWrite <= '1' when state="0100" or state="0111" or state="1010" else '0';    
  ALUOp <= "10" when state="0110" else 
           "01" when state="1000" else
           "00";                          
 
end Behavioral;
