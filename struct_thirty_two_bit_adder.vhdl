Library ieee;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;
use VHDL_32_Bit_Adder.all;

entity thirty_two_bit_adder is
	port (a,b: in std_logic_vector(31 downto 0);
		cin: in std_logic;
		cout: out std_logic;
		sum: out std_logic_vector(31 downto 0));
end thirty_two_bit_adder;

architecture structural of thirty_two_bit_adder is
	signal carry : std_logic_vector(32 downto 0);
	begin
		carry(0) <= cin;
		Comps: for i in 0 to 31 generate
			uN: entity one_bit_adder port map(a(i),b(i),carry(i),sum(i),carry(i+1));
		end generate;
		cout <= carry(32);
end structural;
