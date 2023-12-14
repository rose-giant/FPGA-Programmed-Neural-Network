`include "not.v"

module not_tb();

    reg A1;
    wire out;

    fpga_not not0(A1, out);

    initial begin

      $dumpfile("not.vcd");
      $dumpvars(0, not_tb);

      A1 = 0; 
      #20;

      A1 = 1;
      #20;

      A1 = 0; 
      #20;

      A1 = 1;
      #20;
    end

endmodule