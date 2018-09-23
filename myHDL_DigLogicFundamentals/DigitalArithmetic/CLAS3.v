// File: CLAS3.v
// Generated by MyHDL 0.10
// Date: Tue Aug 21 12:52:30 2018


`timescale 1ns/10ps

module CLAS3 (
    p,
    c,
    s
);
// Carrry Look Ahead Adder Stage 3
// Input:
//     p(bool):carry propagate
//     c(bool): carry
// 
// Output:
//     s(bool): sum

input p;
input c;
output s;
wire s;





assign s = (p ^ c);

endmodule
