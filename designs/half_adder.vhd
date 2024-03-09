library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_adder is
	port(
	a	: in bit;
	b	: in bit;
	sum	: out bit;
	carry	: out bit);
end entity half_adder;

architecture half_adder_arch of half_adder is
begin
	sum 	<= a xor b;
	carry 	<= a and b;
end architecture half_adder_arch;
