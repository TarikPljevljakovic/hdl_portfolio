library ieee;
use ieee.std_logic_1164.all;

entity tb_hex_inverter is

end entity tb_hex_inverter;

architecture tb_hex_inverter_arch of tb_hex_inverter is

signal s_a	: std_logic_vector(5 downto 0) := "000000";
signal s_y	: std_logic_vector(5 downto 0);

component hex_inverter is
	port(
	a	: in std_logic_vector(5 downto 0);
	y	: out std_logic_vector(5 downto 0));
end component hex_inverter;

begin

DUT : hex_inverter
	port map(
	a => s_a,
	y => s_y);

process
begin
	s_a <= "100000";
	wait for 50 ns;
	s_a <= "100110";
	wait for 50 ns;
	s_a <= "011100";
	wait for 50 ns;
	s_a <= "010101";
	wait for 50 ns;
	s_a <= "111111";
	wait for 50 ns;
	s_a <= "000111";
	wait;
end process;

end architecture tb_hex_inverter_arch;
