----------------------------------------------------------------------------------
-- Filename : p_encoder_mux_4_2.vhdl
-- Author : Shyama Gandhi
-- Date : 06-Sep-2023
-- Design Name: priority encoder
-- Description : This file implements a 4:2 priority encoder using a 4x1 multiplexer
-- Additional Comments:
-- Copyright : University of Alberta, 2023
-- License : CC0 1.0 Universal
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity priority_encoder_4_2_mux is
  Port (
         D: IN STD_LOGIC_VECTOR(3 downto 0):= (others=>'0');
         Q: OUT STD_LOGIC_VECTOR(1 downto 0):= (others=>'0');
         GS: OUT STD_LOGIC :='0'
       );
end priority_encoder_4_2_mux;

architecture Behavioral of priority_encoder_4_2_mux is

signal and_out: STD_LOGIC:='0';

begin

and_out <= D(0) and D(1);

Q1_MUX: entity work.mux_4_1(Behavioral) 
        port map( data_in(0)=>'0'
                , data_in(1)=>'0'
                , data_in(2)=>'0'
                , data_in(3)=>'1'
                , data_out=>Q(1)
                , sel(0)=>D(2)
                , sel(1)=>D(3)
                );
                                                
Q0_MUX: entity work.mux_4_1(Behavioral)
        port map( data_in(0)=>'1'
                , data_in(1)=>'1'
                , data_in(2)=>'1'
                , data_in(3)=>D(1)
                , data_out=>Q(0)
                , sel(0)=>D(2)
                , sel(1)=>D(3)
                );
                                                
GS_MUX: entity work.mux_4_1(Behavioral)
        port map( data_in(0)=>'0'
                , data_in(1)=>'0'
                , data_in(2)=>'0'
                , data_in(3)=>and_out
                , data_out=>GS
                , sel(0)=>D(2)
                , sel(1)=>D(3)
                );

end Behavioral;
