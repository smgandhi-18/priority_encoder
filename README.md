# Priority Encoder

This repository contains VHDL code for a priority encoder.

## Description

A priority encoder is a combinational circuit that compresses multiple binary inputs into a smaller number of outputs. The output of a priority encoder is a binary code representing the highest priority active input.

This VHDL implementation of a priority encoder includes modules for various configurations, such as 4-to-2 priority encoder and 8-to-3 priority encoder.

## Files

- `mux_4_1.vhd`: VHDL file for a 4-to-1 multiplexer.
- `p_encoder_mux_4_2.vhd`: VHDL file for a 4-to-2 priority encoder using 4-to-1 multiplexer.
- `priority_encoder_4_2.vhd`: VHDL file for a 4-to-2 priority encoder.
- `priority_encoder_8_3.vhd`: VHDL file for an 8-to-3 priority encoder.
