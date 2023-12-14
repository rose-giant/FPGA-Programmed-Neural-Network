`include "and.v"

module and_tb();

    reg A0, B0;
    wire out;

    fpga_and and0(A0, B0, out);

    initial begin

      $dumpfile("and.vcd");
      $dumpvars(0, and_tb);

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