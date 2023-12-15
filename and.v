//`include "c2.v"

module fpga_and(input A0, B0, output out);

    c2 c2_instance(1'b0, 1'b0, 1'b1, 1'b1, A0, 1'b1, B0, 1'b0, out);

endmodule