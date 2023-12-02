Library ieee;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity thirty_two_bit_adder2 is
	port (a,b: in std_logic_vector(31 downto 0);
		cin: in std_logic;
		cout: out std_logic;
		sum: out std_logic_vector(31 downto 0));
end thirty_two_bit_adder2;

architecture behav of thirty_two_bit_adder2 is
	signal temp: std_logic_vector(32 downto 0);
	begin
		process(a,b,cin) 
			variable tempA, tempB: std_logic_vector(32 downto 0);
			begin
				tempA := '0' & a;
				tempB := '0' & b;
				if cin = '1' then
			 temp <= std_logic_vector(unsigned(tempA) + unsigned(tempB) + 1);
				elsif cin = '0' then
			 temp <= std_logic_vector(unsigned(tempA) + unsigned(tempB) + 0);
				else 
				   temp <= (others => '0');
				end if;
			end process;
	sum <= temp(31 downto 0);
	cout <= temp(32);
end behav;
