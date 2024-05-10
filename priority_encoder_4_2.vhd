----------------------------------------------------------------------------------
-- Filename : priority_encoder_4_2.vhdl
-- Author : Shyama Gandhi
-- Date : 06-Sep-2023
-- Design Name: priority encoder 4x2
-- Description : Thsi file implements a 4:2 priority encoder with a "group select" signal
-- Additional Comments:
-- Copyright : University of Alberta, 2023
-- License : CC0 1.0 Universal
----------------------------------------------------------------------------------

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