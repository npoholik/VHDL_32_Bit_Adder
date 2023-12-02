Library ieee;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity one_bit_adder is
	port (a,b: in std_logic;
		cin: in std_logic;
		cout: out std_logic;
		sum: out std_logic);
end one_bit_adder;

architecture behav of one_bit_adder is
	begin
		sum <= a xor b xor cin;
		cout <= (a and b) or (a and cin) or (b and cin);
end behav;

