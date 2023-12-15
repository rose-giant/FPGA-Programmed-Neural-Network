`include "one1.v"
`include "or.v"

module all1(input x1, x2, x3, x4, output out);

    wire t1, t2;
    wire out1, out2, out3, out4;

    one1 one11(x1, x2, x3, x4,  out1);
    one1 one12(x2, x1, x3, x4,  out2);
    one1 one13(x3, x2, x1, x4,  out3);
    one1 one14(x4, x2, x3, x1,  out4);

    fpga_or or0(out1, out2, t1);
    fpga_or or1(out3, out4, t2);

    fpga_or or2(t1, t2, out);

endmodule