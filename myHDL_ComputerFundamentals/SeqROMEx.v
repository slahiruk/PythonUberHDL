// File: SeqROMEx.v
// Generated by MyHDL 0.10
// Date: Wed Jun 27 00:03:18 2018


`timescale 1ns/10ps

module SeqROMEx (
    clk,
    rst,
    dout
);
// Seq Read Only Memory Ex
// I/O:
//     clk (bool): clock
//     rst (bool): rst on counter
//     dout (signal >4): data out

input clk;
input rst;
output [3:0] dout;
reg [3:0] dout;

reg [2:0] Count = 0;



always @(posedge clk) begin: SEQROMEX_COUNTER
    if (rst) begin
        Count <= 0;
    end
    else if ((Count == 3)) begin
        Count <= 0;
    end
    else begin
        Count <= (Count + 1);
    end
end


always @(posedge clk) begin: SEQROMEX_MEMORY
    case (Count)
        'h0: begin
            dout <= 3;
        end
        'h1: begin
            dout <= 2;
        end
        'h2: begin
            dout <= 1;
        end
        'h3: begin
            dout <= 0;
        end
    endcase
end

endmodule
