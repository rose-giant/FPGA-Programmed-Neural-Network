`include "not.v"
`include "and.v"

module one1(input x1, x2, x3, x4, output out);
    wire w2, w3, w4;
    wire t1, t2;

    fpga_not not2(x2, w2);
    fpga_not not3(x3, w3);
    fpga_not not4(x4, w4);

    fpga_and and1(x1, w2, t1);
    fpga_and and2(w2, w3, t2);

    fpga_and and3(t1, t2, out);
endmodule