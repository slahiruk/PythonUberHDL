// File: mux21_behavioral.v
// Generated by MyHDL 0.9.0
// Date: Mon Oct  9 19:21:46 2017


`timescale 1ns/10ps

module mux21_behavioral (
    sel,
    x_1in,
    x_2in,
    f_out
);


input sel;
input x_1in;
input x_2in;
output f_out;
reg f_out;






always @(sel, x_1in, x_2in) begin: MUX21_BEHAVIORAL_LOGIC
    if (sel) begin
        f_out = x_1in;
    end
    else begin
        f_out = x_2in;
    end
end

endmodule