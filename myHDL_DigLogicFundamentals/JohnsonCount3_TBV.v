// File: JohnsonCount3_TBV.v
// Generated by MyHDL 0.10
// Date: Tue Aug 14 07:16:07 2018


`timescale 1ns/10ps

module JohnsonCount3_TBV (

);
// myHDL -> Verilog Testbench for `UpDown_Counter` module


wire [3:0] q;
reg clk = 0;
reg rst = 0;
reg [1:0] Dir = 2'b10;
reg [3:0] JohnsonCount30_0_q_i = 0;



always @(clk, rst, q, Dir) begin: JOHNSONCOUNT3_TBV_PRINT_DATA
    $write("%h", clk);
    $write(" ");
    $write("%h", rst);
    $write(" ");
    $write("%h", q);
    $write(" ");
    $write("%h", Dir);
    $write("\n");
end


always @(posedge clk, negedge rst) begin: JOHNSONCOUNT3_TBV_JOHNSONCOUNT30_0_JCSTATEMACHINE
    if (rst) begin
        JohnsonCount30_0_q_i <= 0;
    end
    else if ((Dir == 2'b00)) begin
        JohnsonCount30_0_q_i[4-1:1] <= JohnsonCount30_0_q_i[(4 - 1)-1:0];
        JohnsonCount30_0_q_i[0] <= (!JohnsonCount30_0_q_i[(4 - 1)]);
    end
    else if ((Dir == 2'b01)) begin
        JohnsonCount30_0_q_i <= JohnsonCount30_0_q_i;
    end
    else if ((Dir == 2'b10)) begin
        JohnsonCount30_0_q_i[(4 - 1)-1:0] <= JohnsonCount30_0_q_i[4-1:1];
        JohnsonCount30_0_q_i[(4 - 1)] <= (!JohnsonCount30_0_q_i[0]);
    end
end



assign q = JohnsonCount30_0_q_i;


initial begin: JOHNSONCOUNT3_TBV_CLK_SIGNAL
    while (1'b1) begin
        clk <= (!clk);
        # 1;
    end
end


initial begin: JOHNSONCOUNT3_TBV_STIMULES
    integer i;
    i = 0;
    while (1'b1) begin
        if ((i == ((2 * 2) * 4))) begin
            Dir <= 2'b00;
        end
        else if ((i == ((4 * 2) * 4))) begin
            rst <= 1;
        end
        else if ((i == (((4 * 2) * 4) + 1))) begin
            rst <= 0;
        end
        else if ((i == (((4 * 2) * 4) + 2))) begin
            Dir <= 2'b01;
        end
        else begin
            // pass
        end
        if ((i == ((5 * 2) * 4))) begin
            $finish;
        end
        i = i + 1;
        @(posedge clk);
    end
end

endmodule