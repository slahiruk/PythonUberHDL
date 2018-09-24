// File: MUX2_1_B_TBV.v
// Generated by MyHDL 0.10
// Date: Sun Sep 23 18:21:01 2018


`timescale 1ns/10ps

module MUX2_1_B_TBV (

);
// myHDL -> Verilog testbench for module `MUX2_1_B`


reg x0 = 0;
reg x1 = 0;
reg s = 0;
reg y = 0;
wire [17:0] x0TV;
wire [17:0] x1TV;
wire [17:0] sTV;

assign x0TV = 18'd52583;
assign x1TV = 18'd87798;
assign sTV = 18'd16277;


always @(s, y, x0, x1) begin: MUX2_1_B_TBV_PRINT_DATA
    $write("%h", x0);
    $write(" ");
    $write("%h", x1);
    $write(" ");
    $write("%h", s);
    $write(" ");
    $write("%h", y);
    $write("\n");
end


always @(s, x0, x1) begin: MUX2_1_B_TBV_MUX2_1_B0_0_LOGIC
    if (s) begin
        y = x1;
    end
    else begin
        y = x0;
    end
end


initial begin: MUX2_1_B_TBV_STIMULES
    integer i;
    for (i=0; i<18; i=i+1) begin
        x0 <= x0TV[i];
        x1 <= x1TV[i];
        s <= sTV[i];
        # 1;
    end
    $finish;
end

endmodule