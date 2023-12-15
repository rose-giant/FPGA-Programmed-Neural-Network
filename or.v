//`include "c2.v"

module fpga_or(input A1, B1, output out);

    c2 c2_instance(1'b0, 1'b1, 1'b0, 1'b1, 1'b0, A1, 1'b0, B1, out);
    //     c2(input d0, d1, d2, d3, A0, A1, B0, B1, output reg out);

endmodule