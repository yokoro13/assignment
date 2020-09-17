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

entity MulticycleProcessor is
    Port ( 
      clk : in  STD_LOGIC;
      reset : in std_logic;
      pc_out : out std_logic_vector(31 downto 0);
      alu_result_out : out std_logic_vector(31 downto 0);
      write_data_out : out std_logic_vector(31 downto 0);
      instr_out : out std_logic_vector(31 downto 0);
      write_reg_out : out std_logic_vector(4 downto 0)
      );
end MulticycleProcessor;

architecture Behavioral of MulticycleProcessor is
    signal PC : std_logic_vector(31 downto 0);
    signal PC_next : std_logic_vector(31 downto 0);
  
    signal Adr : std_logic_vector(31 downto 0);
  
    signal rd : std_logic_vector(31 downto 0);
    signal Instr : std_logic_vector(31 downto 0);
    signal Data : std_logic_vector(31 downto 0);

    signal SignImm : std_logic_vector(31 downto 0);
    signal WriteReg : std_logic_vector(4 downto 0);
    signal PCBranch : std_logic_vector(31 downto 0);
    signal SrcA : std_logic_vector(31 downto 0);
    signal SrcB : std_logic_vector(31 downto 0);

    signal ALUResult : std_logic_vector(31 downto 0);
    signal ALUOut : std_logic_vector(31 downto 0);

    signal WriteData : std_logic_vector(31 downto 0);
    signal ReadData : std_logic_vector(31 downto 0);
    signal Zero : std_logic;
  
    signal IorD : std_logic;
    signal MemWrite : std_logic;
    signal IRWrite : std_logic; 
    signal PCWrite : std_logic;
    signal PCSrc : std_logic;
    signal MemtoReg : std_logic;
    signal Branch: std_logic;
    signal ALUControl : std_logic_vector(2 downto 0);
    signal ALUSrcA : std_logic;
    signal ALUSrcB : std_logic_vector(1 downto 0);
    signal RegDst : std_logic;
    signal RegWrite : std_logic;
    
    signal op : std_logic_vector(5 downto 0);
    signal funct : std_logic_vector(5 downto 0);
  
    signal a1 : std_logic_vector(4 downto 0);
    signal a2 : std_logic_vector(4 downto 0);
    signal a3 : std_logic_vector(4 downto 0);
    signal wd3 : std_logic_vector(31 downto 0);
    signal rd1 : std_logic_vector(31 downto 0);
    signal rd2 : std_logic_vector(31 downto 0);

    signal A : std_logic_vector(31 downto 0);
    signal B : std_logic_vector(31 downto 0);

    signal PCEn : std_logic;

  COMPONENT InstrDataMemory
    PORT (
      a : in  STD_LOGIC_VECTOR (31 downto 0);
      wd : in  STD_LOGIC_VECTOR (31 downto 0);
      clk : in  STD_LOGIC;
      we : in  STD_LOGIC;
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
      clk : in  STD_LOGIC;
      reset : in std_logic;
      Op : in  STD_LOGIC_VECTOR (5 downto 0);
      Funct : in  STD_LOGIC_VECTOR (5 downto 0);
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
      ALUControl : out  STD_LOGIC_VECTOR (2 downto 0)
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

  a1 <= Instr(25 downto 21);
  a2 <= Instr(20 downto 16);
  a3 <= Instr(15 downto 11) when RegDst='1' else Instr(20 downto 16);

  wd3 <= Data when MemtoReg='1' else ALUOut;

  op <= Instr(31 downto 26);
  funct <= Instr(5 downto 0);

  SignImm <= x"ffff" & Instr(15 downto 0) when Instr(15)='1' else x"0000" & Instr(15 downto 0);

  SrcA <= A when ALUSrcA = '1' else PC;
  SrcB <= B when ALUSrcB = "00" else
          x"00000001" when ALUSrcB = "01" else
          SignImm when ALUSrcB = "10" else
          SignImm when ALUSrcB = "11";

  PC_next <= ALUOut when PCSrc = '1' else ALUResult;

  pc_out <= PC;
  alu_result_out <= ALUResult;
  write_data_out <= B;
  instr_out <= Instr;
  write_reg_out <= a3;
  
  Adr <= ALUOut when IorD='1' else PC;
  PCEn <= '1' when PCWrite='1' or (Zero='1' and Branch='1') else '0';

  process(clk, reset)
  begin
    if(reset='1') then
      PC <= x"00000000";
    elsif (rising_edge(clk)) then
      ALUOut <= ALUResult;
      Data <= rd;
      A <= rd1;
      B <= rd2;
      if(PCEn='1') then 
        PC <= PC_next;
      end if;
      if(IRWrite='1') then
        Instr <= rd;
      end if;
    end if;
  end process;

  register_file : RegisterFile
    PORT MAP (
  	  a1 => a1,
      a2 => a2,
      a3 => a3,
      wd3 => wd3,
      clk => clk,
      we3 => RegWrite,
      rd1 => rd1,
      rd2 => rd2
    );

  instr_data_memory : InstrDataMemory
    PORT MAP (
      a => Adr,
      wd => B,
      clk => clk,
      we => MemWrite,
      rd => rd
    );

  control_unit : ControlUnit
    PORT MAP (
      clk => clk,
      reset => reset,
      Op => op,
      Funct => funct,
      MemWrite => MemWrite,
      IorD => IorD,
      IRWrite => IRWrite,
      PCWrite => PCWrite,
      Branch => Branch,
      PCSrc => PCsrc,
      ALUSrcA => ALUSrcA,
      ALUSrcB => ALUSrcB,
      RegDst => RegDst,
      MemtoReg => MemtoReg,
      RegWrite => RegWrite,
      ALUControl => ALUControl
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