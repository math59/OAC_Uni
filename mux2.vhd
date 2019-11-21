library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- mux 2 pra 1
entity mux2 is
	port(
		in0, in1: in std_logic_vector(31 downto 0);
		sel: in std_logic;
		output: out std_logic_vector(31 downto 0)
	);
end entity mux2;

architecture mux2_arch of mux2 is
begin
	with sel select
		output <= in0 when '0',
					 in1 when '1';
end mux2_arch;