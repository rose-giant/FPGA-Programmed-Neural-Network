`include "not.v"
`include "and.v"
`include "or.v"

module fpga_xor(input a, b, output out);

    wire w1, w2, anot, bnot;
    fpga_not not0(a, anot);
    fpga_not not1(b, bnot);

    fpga_and and0(a, bnot, w1);
    fpga_and and1(b, anot, w2);

    fpga_or or0(w1, w2, out);

endmodule