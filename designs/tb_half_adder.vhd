library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_half_adder is

end entity tb_half_adder;

architecture tb_half_adder_arch of tb_half_adder is

signal s_a	: bit :='0';
signal s_b 	: bit :='0';
signal s_sum 	: bit;
signal s_carry 	: bit;

component half_adder is
	port(
	a	: in bit;
	b	: in bit;
	sum	: out bit;
	carry	: out bit);
end component half_adder;

begin

DUT : half_adder
	port map(
	a => s_a,
	b => s_b,
	sum => s_sum,
	carry => s_carry);

process
begin
	s_a <='1';
	wait for 50 ns;
	s_b <='1';
	wait for 50 ns;
	s_a <='0';
	wait for 75 ns;
	s_b <='0';
	wait;
end process;

end architecture tb_half_adder_arch;
