// File: MUX4_1_BV.v
// Generated by MyHDL 0.10
// Date: Sat Sep 22 02:14:13 2018


`timescale 1ns/10ps

module MUX4_1_BV (
    X,
    S,
    y
);
// 4:1 Multiblexerwritten in behvioral "if-elif-else"(case)
// with BitVector inputs
// Input:
//     X(4bitBV):input bit vector; min=0, max=15
//     S(2bitBV):selection bit vector; min=0, max=3
// Output:
//     y(bool): ouput

input [3:0] X;
input [1:0] S;
output y;
reg y;




always @(X, S) begin: MUX4_1_BV_LOGIC
    case (S)
        'h0: begin
            y = X[0];
        end
        'h1: begin
            y = X[1];
        end
        'h2: begin
            y = X[2];
        end
        default: begin
            y = X[3];
        end
    endcase
end

endmodule
