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

entity SingleCycleProcessor is
    Port ( 
      clk : in  STD_LOGIC;
      reset : in std_logic;
      pc_out : out std_logic_vector(31 downto 0);
      alu_result_out : out std_logic_vector(31 downto 0);
      write_data_out : out std_logic_vector(31 downto 0);
      instr_out : out std_logic_vector(31 downto 0);
      write_reg_out : out std_logic_vector(4 downto 0);
      result_out : out std_logic_vector(31 downto 0)
      );
end SingleCycleProcessor;

architecture Behavioral of SingleCycleProcessor is
  signal PC : std_logic_vector(31 downto 0);
  signal PC_next : std_logic_vector(31 downto 0);
  signal PCPlus1 : std_logic_vector(31 downto 0);
  
  signal Instr : std_logic_vector(31 downto 0);
  signal SignImm : std_logic_vector(31 downto 0);
  signal WriteReg : std_logic_vector(4 downto 0);
  signal PCBranch : std_logic_vector(31 downto 0);
  signal SrcA : std_logic_vector(31 downto 0);
  signal SrcB : std_logic_vector(31 downto 0);
  signal ALUResult : std_logic_vector(31 downto 0);
  signal WriteData : std_logic_vector(31 downto 0);
  signal ReadData : std_logic_vector(31 downto 0);
  signal Result : std_logic_vector(31 downto 0);
  signal Zero : std_logic;

  signal MemWrite : std_logic;
  signal PCWrite : std_logic;
  signal PCSrc : std_logic;
  signal MemtoReg : std_logic;
  signal Branch: std_logic;
  signal ALUControl : std_logic_vector(2 downto 0);
  signal ALUSrc : std_logic;
  signal RegDst : std_logic;
  signal RegWrite : std_logic;

  signal Jump : std_logic;
  signal PCJump : std_logic_vector(31 downto 0);

  COMPONENT DataMemory
    PORT (
      a : in  STD_LOGIC_VECTOR (31 downto 0);
      wd : in  STD_LOGIC_VECTOR (31 downto 0);
      clk : in  STD_LOGIC;
      we : in  STD_LOGIC;
      rd : out  STD_LOGIC_VECTOR (31 downto 0)
    );
  END COMPONENT;

  COMPONENT InstructionMemory
    PORT (
      a : in  STD_LOGIC_VECTOR (31 downto 0);
      rd : out  STD_LOGIC_VECTOR (31 downto 0)
    );
  END COMPONENT;

  COMPONENT RegisterFile
    Port (
  	  a1 : in  STD_LOGIC_VECTOR (4 downto 0);
      a2 : in  STD_LOGIC_VECTOR (4 downto 0);
      a3 : in  STD_LOGIC_VECTOR (4 downto 0);
      wd3 : in  STD_LOGIC_VECTOR (31 downto 0);
  	  clk : in  STD_LOGIC;
  	  we3 : in  STD_LOGIC;
  	  rd1 : out  STD_LOGIC_VECTOR (31 downto 0);
  	  rd2 : out  STD_LOGIC_VECTOR (31 downto 0)
    );
  END COMPONENT;

  COMPONENT ControlUnit
    Port (
      Op : in  STD_LOGIC_VECTOR (5 downto 0);
      Funct : in  STD_LOGIC_VECTOR (5 downto 0);
      MemtoReg : out  STD_LOGIC;
      MemWrite : out  STD_LOGIC;
      Branch : out  STD_LOGIC;
      ALUSrc : out  STD_LOGIC;
      RegDst : out  STD_LOGIC;
      RegWrite : out  STD_LOGIC;
      ALUControl : out  STD_LOGIC_VECTOR (2 downto 0);
      Jump : out  STD_LOGIC
    );
  END COMPONENT;

  COMPONENT ALU
    Port (
      ALUControl : in  STD_LOGIC_VECTOR (2 downto 0);
      SrcA : in  STD_LOGIC_VECTOR (31 downto 0);
      SrcB : in  STD_LOGIC_VECTOR (31 downto 0);
      ALUResult : out  STD_LOGIC_VECTOR (31 downto 0);
      Zero : out  STD_LOGIC
    );
  END COMPONENT;

begin

  PCPlus1 <= PC + 1;

  WriteReg <= Instr(15 downto 11) when RegDst='1' else Instr(20 downto 16);

  PCJump <= PCPlus1(31 downto 26) & Instr(25 downto 0);
  SignImm <= x"ffff" & Instr(15 downto 0) when Instr(15)='1' else x"0000" & Instr(15 downto 0);

  PCBranch <= SignImm + PCPlus1;
  PCSrc <= Branch and Zero;
  PC_next <= PCJump when Jump = '1' else PCBranch when PCSrc = '1' else PCPlus1;

  SrcB <= SignImm when ALUSrc = '1' else WriteData;
  Result <= ReadData when MemtoReg = '1' else ALUResult;

  pc_out <= PC;
  alu_result_out <= Result;
  write_data_out <= WriteData;
  instr_out <= Instr;
  write_reg_out <= WriteReg;
  result_out <= Result;
  
  process(clk, reset)
  begin
    if(reset='1') then
      PC <= x"00000000";
    elsif (rising_edge(clk)) then
      PC <= PC_next;
    end if;
  end process;

  instruction_memory : InstructionMemory
    PORT MAP (
      a => PC,
      rd => Instr
    );

  register_file : RegisterFile
    PORT MAP (
  	  a1 => Instr(25 downto 21),
      a2 => Instr(20 downto 16),
      a3 => WriteReg,
      wd3 => Result,
      clk => clk,
      we3 => RegWrite,
      rd1 => SrcA,
      rd2 => WriteData
    );

  data_memory : DataMemory
    PORT MAP (
      a => ALUResult,
      wd => WriteData,
      clk => clk,
      we => MemWrite,
      rd => ReadData
    );

  control_unit : ControlUnit
    PORT MAP (
      Op => Instr(31 downto 26),
      Funct => Instr(5 downto 0),
      MemtoReg => MemtoReg,
      MemWrite => MemWrite,
      Branch => Branch,
      ALUSrc => ALUSrc,
      RegDst => RegDst,
      RegWrite => RegWrite,
      ALUControl => ALUControl,
      Jump => Jump
    );

  ualu : ALU
    PORT MAP (
      ALUControl => ALUControl,
      SrcA => SrcA,
      SrcB => SrcB,
      ALUResult => ALUResult,
      Zero => Zero
    );
end Behavioral;
