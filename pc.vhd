library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- módulo responsável por fornecer o endereço da próxima instrução
entity pc is
	port(
		input: in std_logic_vector(31 downto 0) := X"00000000";
		clk: in std_logic;
		output: out std_logic_vector(31 downto 0)
	);
end entity pc;

architecture pc_arch of pc is
	begin
		process(clk)
			begin
				if rising_edge(clk) then
					output <= input;
				end if;
		end process;
end architecture pc_arch;