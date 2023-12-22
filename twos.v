//`include "not.v"

module twos(input [9:0] in, output [9:0] out);
    wire wbit,w1,w2,w3,w4,w5,w6,w7,w8,w9;
    wire [9:0] s;
    assign wbit = in[9];
    fpga_not not9(in[8], w9);
    fpga_not not8(in[7], w8);
    fpga_not not7(in[6], w7);
    fpga_not not6(in[5], w6);
    fpga_not not5(in[4], w5);
    fpga_not not4(in[3], w4);
    fpga_not not3(in[2], w3);
    fpga_not not2(in[1], w2);
    fpga_not not1(in[0], w1);

    assign s = {wbit,w9,w8,w7,w6,w5,w4,w3,w2,w1};
    assign out = s + 10'b0000000001;
    assign out [9] = wbit;
endmodule