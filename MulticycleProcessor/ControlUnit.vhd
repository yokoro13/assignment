library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is
    Port ( clk : in  STD_LOGIC;
           reset : in std_logic;
           Op : in  STD_LOGIC_VECTOR (5 downto 0);
           Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           MemWrite : out  STD_LOGIC;
           IorD : out  STD_LOGIC;
           IRWrite : out std_logic;
           PCWrite : out std_logic;
           Branch : out  STD_LOGIC;
			  PCSrc : out STD_LOGIC;
           ALUSrcA : out  STD_LOGIC;
           ALUSrcB : out  STD_LOGIC_VECTOR(1 downto 0);
           RegDst : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           ALUControl : out  STD_LOGIC_VECTOR (2 downto 0)
			);
end ControlUnit;

architecture Behavioral of ControlUnit is

	signal ALUOp : STD_LOGIC_VECTOR (1 downto 0);

  COMPONENT MainDecoder
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
  END COMPONENT;

  COMPONENT ALUDecoder
    Port (
			Funct : in  STD_LOGIC_VECTOR (5 downto 0);
      ALUOp : in STD_LOGIC_VECTOR (1 downto 0);
      ALUControl : out  STD_LOGIC_VECTOR (2 downto 0)
    );
  END COMPONENT;

begin

  main_decoder : MainDecoder
  	PORT MAP (
      clk => clk,
      reset => reset,
      Op => op,
      MemWrite => MemWrite,
      IorD => IorD,
      IRWrite => IRWrite,
      PCWrite => PCWrite,
      Branch => Branch,
      PCSrc => PCSrc,
      ALUSrcA => ALUSrcA,
      ALUSrcB => ALUSrcB,
      RegDst => RegDst,
      MemtoReg => MemtoReg,
      RegWrite => RegWrite,
      ALUOp => ALUOp
		);
		
	alu_decoder : ALUDecoder
    PORT MAP (
			Funct => Funct,
			ALUOp => ALUOp,
      ALUControl => ALUControl
    );

end Behavioral;
