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
    Port ( Op : in  STD_LOGIC_VECTOR (5 downto 0);
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
end ControlUnit;

architecture Behavioral of ControlUnit is

	signal ALUOp : STD_LOGIC_VECTOR (1 downto 0);

  COMPONENT MainDecoder
    Port (
      Op : in  STD_LOGIC_VECTOR (5 downto 0);
      MemtoReg : out  STD_LOGIC;
      MemWrite : out  STD_LOGIC;
      Branch : out  STD_LOGIC;
      ALUSrc : out  STD_LOGIC;
      RegDst : out  STD_LOGIC;
		  RegWrite : out  STD_LOGIC;
		  ALUOp : out STD_LOGIC_VECTOR(1 downto 0);
      Jump : out  STD_LOGIC
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
      Op => op,
      MemtoReg => MemtoReg,
      MemWrite => MemWrite,
      Branch => Branch,
      ALUSrc => ALUSrc,
      RegDst => RegDst,
			RegWrite => RegWrite,
			ALUOp => ALUOp,
      Jump => Jump
		);
		
	alu_decoder : ALUDecoder
    PORT MAP (
			Funct => Funct,
			ALUOp => ALUOp,
      ALUControl => ALUControl
    );

end Behavioral;
