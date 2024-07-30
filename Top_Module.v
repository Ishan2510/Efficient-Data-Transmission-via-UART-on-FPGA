`timescale 1ns / 1ps


module Top_Module(
input [7:0]data,
input transmit,
input btn,
input clk,
output TxD,
output TxD_debug,
output transmit_debug,
output btn_debug, 
output clk_debug
); 

wire transmit_out;
assign TxD_debug = TxD;
assign transmit_debug = transmit_out;
assign btn_debug = btn;
assign clk_debug = clk;

//instiantiating the Transmitter and Debouncing signals Module

Debounce_Signals DB (clk, btn, transmit_out);
Transmitter T1 (clk, transmit,transmit_out,data,TxD);


endmodule
