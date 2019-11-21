library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- mux 4 pra 1 com a entrada 3 (sel = 11) nula pois não é necessária
entity mux4 is
	port(
		in0, in1, in2: in std_logic_vector(31 downto 0);
		in3: in std_logic_vector(31 downto 0) := X"00000000";
		sel: in std_logic_vector(1 downto 0);
		output: out std_logic_vector(31 downto 0)
	);
end entity mux4;

architecture mux4_arch of mux4 is
begin
	with sel select
		output <= in0 when "00",
					 in1 when "01",
					 in2 when "10",
					 in3 when "11";
end mux4_arch;