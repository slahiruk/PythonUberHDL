// File: PIPO_S2.v
// Generated by MyHDL 0.10
// Date: Wed Sep  5 07:50:41 2018


`timescale 1ns/10ps

module PIPO_S2 (
    DataIn,
    DataOut1,
    DataOut2,
    clk,
    rst
);
// one-in two-out PIPO with buffering
// 
// Inputs:
//     DataIn(bitVec): one-in Parallel data int
//     clk(bool): clock
//     rst(bool): reset
//     
// Ouputs:
//     DataOut1(bitVec): Parallel out 1
//     DataOut2(bitVec): Parallel out 1
//     

input [3:0] DataIn;
output [3:0] DataOut1;
wire [3:0] DataOut1;
output [3:0] DataOut2;
wire [3:0] DataOut2;
input clk;
input rst;

reg [3:0] Buffer;



always @(posedge clk, negedge rst) begin: PIPO_S2_LOGIC
    if (rst) begin
        Buffer <= 0;
    end
    else begin
        Buffer <= DataIn;
    end
end



assign DataOut1 = Buffer;
assign DataOut2 = Buffer;

endmodule