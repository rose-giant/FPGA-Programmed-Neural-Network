`include "s2.v"

module fpga_reg(input in, ld, rst, clk, output out);
    wire [3:0] d;
    assign d = {out, out, in, in};
    s2 s20(d, 1'b0, 1'b0, ld, 1'b0, rst, clk, out);
//s2(input [3:0] d, input A0, B0, A1, B1, clr, clk, output out);
endmodule