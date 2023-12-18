`include "xor.v"

module mult(input [4:0] a, b , output [9:0] out);

    wire a1,a2,a3,a4, b1,b2,b3,b4, d1,d2,d3,d4, c1,c2,c3,c4, e1,e2,e3,e4, f1,f2,f3,f4;
    wire [8:0] row1, row2, row3, row4;

    assign {a1,a2,a3,a4} = a[3:0];
    assign {b1,b2,b3,b4} = b[3:0];

    fpga_and and0(a1, b4, d1);
    fpga_and and1(a2, b4, d2);
    fpga_and and2(a3, b4, d3);
    fpga_and and3(a4, b4, d4);

    fpga_and and4(a1, b3, c1);
    fpga_and and5(a2, b3, c2);
    fpga_and and6(a3, b3, c3);
    fpga_and and7(a4, b3, c4);

    fpga_and and8(a1, b2, e1);
    fpga_and and9(a2, b2, e2);
    fpga_and and10(a3, b2, e3);
    fpga_and and11(a4, b2, e4);

    fpga_and and12(a1, b1, f1);
    fpga_and and13(a2, b1, f2);
    fpga_and and14(a3, b1, f3);
    fpga_and and15(a4, b1, f4);

    assign row1 = {5'b0 , d1 , d2 , d3 , d4};
    assign row2 = {4'b0, c1, c2, c3 , c4 , 1'b0};
    assign row3 = {3'b0, e1, e2, e3 , e4 , 2'b0};
    assign row4 = {2'b0, f1 , f2 , f3 , f4, 3'b0};

    assign out[8:0] = row1 + row2 + row3 + row4;
    fpga_xor xor0(a[4], b[4], out[9]);

endmodule