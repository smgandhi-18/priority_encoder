LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY mux_4_1 IS
    PORT (
        data_in  : IN STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
        data_out : OUT STD_LOGIC                   := '0';
        sel      : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
END mux_4_1;

ARCHITECTURE Behavioral OF mux_4_1 IS

BEGIN

    WITH sel SELECT data_out <=
        data_in(0) WHEN "00",
        data_in(1) WHEN "01",
        data_in(2) WHEN "10",
        data_in(3) WHEN "11",
        '0' WHEN OTHERS;
END Behavioral;
