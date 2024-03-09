library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_full_adder is

end entity tb_full_adder;

architecture tb_full_adder_arch of tb_full_adder is

signal s_a, s_b, s_c_in	: bit :='0';
signal s_sum, s_c_out	: bit;

component full_adder is
	port(
	a	: in bit;
	b	: in bit;
	c_in	: in bit;
	sum	: out bit;
	c_out	: out bit);
end component full_adder;

begin

DUT : full_adder
	port map(
	a => s_a,
	b => s_b,
	c_in => s_c_in,
	sum => s_sum,
	c_out => s_c_out);

process
begin
	s_a <= '1';
	wait for 50 ns;
	s_b <= '1';
	wait for 50 ns;
	s_c_in <= '1';
	wait for 70 ns;
	s_a <= '0';
	wait for 50 ns;
	s_c_in <= '0';
	wait for 60 ns;
	s_a <= '1';
	wait for 100 ns;
	s_b <= '0';
	wait for 50 ns;
	s_a <= '0';
	wait for 50 ns;
	s_c_in <= '1';
	wait for 50 ns;
	s_b <= '1';
	wait;
end process;

end architecture tb_full_adder_arch;
