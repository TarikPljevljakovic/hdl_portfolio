library ieee;
use ieee.std_logic_1164.all;

entity hex_inverter is
	port(
	a	: in std_logic_vector(5 downto 0);
	y	: out std_logic_vector(5 downto 0));
end entity hex_inverter;

architecture hex_inverter_arch of hex_inverter is
begin
	y <= not a;
end architecture hex_inverter_arch;
