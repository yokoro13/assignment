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
    Port ( Op : in  STD_LOGIC_VECTOR (5 downto 0);
           MemtoReg : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           RegDst : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           ALUOp : out STD_LOGIC_VECTOR(1 downto 0);
           Jump : out  STD_LOGIC);
end MainDecoder;

architecture Behavioral of MainDecoder is
  
  constant r_type : STD_LOGIC_VECTOR (5 downto 0) := "000000";
  constant lw : STD_LOGIC_VECTOR (5 downto 0) := "100011";
  constant sw : STD_LOGIC_VECTOR (5 downto 0) := "101011";
  constant beq : STD_LOGIC_VECTOR (5 downto 0) := "000100";
  constant addi : STD_LOGIC_VECTOR (5 downto 0) := "001000";
  constant j : STD_LOGIC_VECTOR (5 downto 0) := "000010";

begin

  with Op select 
    RegWrite <= 
    '1' when r_type,
    '1' when lw,
    '0' when sw,
    '0' when beq,
    '1' when addi,
    '0' when j,
    'X' when others;

  with Op select 
    RegDst <= 
    '1' when r_type,
    '0' when lw,
    'X' when sw,
    'X' when beq,
    '0' when addi,
    'X' when j,
    'X' when others;

  with Op select 
    AluSrc <= 
    '0' when r_type,
    '1' when lw,
    '1' when sw,
    '0' when beq,
    '1' when addi,
    'X' when j,
    'X' when others;

  with Op select 
    Branch <= 
    '0' when r_type,
    '0' when lw,
    '0' when sw,
    '1' when beq,
    '0' when addi,
    'X' when j,
    'X' when others;

  with Op select 
    MemWrite <= 
    '0' when r_type,
    '0' when lw,
    '1' when sw,
    '0' when beq,
    '0' when addi,
    '0' when j,
    'X' when others;

  with Op select 
    MemtoReg <= 
    '0' when r_type,
    '1' when lw,
    'X' when sw,
    'X' when beq,
    '0' when addi,
    'X' when j,
    'X' when others;

  with Op select 
    ALUOp <= 
    "10" when r_type,
    "00" when lw,
    "00" when sw,
    "01" when beq,
    "00" when addi,
    "XX" when j,
    "XX" when others;

  with Op select 
    Jump <= 
    '0' when r_type,
    '0' when lw,
    '0' when sw,
    '0' when beq,
    '0' when addi,
    '1' when j,
    'X' when others;                                  
 
end Behavioral;
