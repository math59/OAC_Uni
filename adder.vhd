library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- módulo responsável por realizar operações de soma dentro da arquitetura
entity adder is
	port(
		op1, op2: in std_logic_vector(31 downto 0);
		result: out std_logic_vector(31 downto 0)
	);
end entity adder;

architecture adder_arch of adder is

begin
	result <= std_logic_vector(unsigned(op1) + unsigned(op2));
	
end architecture adder_arch;