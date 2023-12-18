`include "xor.v"

module xor_tb();

    reg A0, B0;
    wire out;

    fpga_xor xor0(A0, B0, out);

    initial begin

      $dumpfile("xor.vcd");
      $dumpvars(0, xor_tb);

      A0 = 0; B0 = 0;
      #20;

      A0 = 0; B0 = 1;
      #20;

      A0 = 1; B0 = 0;
      #20;

      A0 = 1; B0 = 1;
      #20;
    end

endmodule