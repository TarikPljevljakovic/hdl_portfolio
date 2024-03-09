library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder is
	port(
	a	: in bit;
	b	: in bit;
	c_in	: in bit;
	sum	: out bit;
	c_out	: out bit);
end entity full_adder;

architecture full_adder_arch of full_adder is

signal s_1, s_2, s_3	: bit;

begin

	s_1 <= a xor b;
	s_2 <= s_1 and c_in;
	s_3 <= a and b;

	sum <= s_1 xor c_in;
	c_out <= s_2 or s_3;

end architecture full_adder_arch;
