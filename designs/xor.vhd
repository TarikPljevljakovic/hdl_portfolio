library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity xor_imp is
	port(
	a	: in bit;
	b	: in bit;
	c	: out bit);
end entity xor_imp;

architecture arch of xor_imp is
begin
	c <= (a and not b) or (not a and b);
end architecture arch;