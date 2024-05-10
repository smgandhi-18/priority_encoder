LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY priority_encoder IS
    PORT (
        D      : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        Y     : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        GS : OUT STD_LOGIC
    );
END priority_encoder;

ARCHITECTURE Behavioral OF priority_encoder IS
BEGIN

    Y(0) <= (NOT(D(2)) AND D(1)) OR D(3);
    Y(1) <= D(2) OR D(3);
    GS   <= D(0) OR D(1) OR D(2) OR D(3);

END Behavioral;