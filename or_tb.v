`include "or.v"

module or_tb();

    reg A0, B0;
    wire out;

    fpga_or or0(A0, B0, out);

    initial begin

      $dumpfile("or.vcd");
      $dumpvars(0, or_tb);

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