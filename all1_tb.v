`include "all1.v"

module all1_tb();
    reg x1, x2, x3, x4;
    wire out;    

    all1 all10(x1, x2, x3, x4, out);

    initial begin
      $dumpfile("all1.vcd");
      $dumpvars(0, all1_tb);

        #10
        x1 = 0; x2 = 0; x3 = 0; x4 = 1; //1

        #10
        x1 = 0; x2 = 1; x3 = 1; x4 = 1; //0

        #10
        x1 = 1; x2 = 0; x3 = 0; x4 = 0; //1

        #10
        x1 = 0; x2 = 1; x3 = 0; x4 = 0; //0

        #10
        x1 = 0; x2 = 0; x3 = 1; x4 = 0; //1

        #10
        x1 = 0; x2 = 1; x3 = 1; x4 = 0; //0

        #10
        x1 = 0; x2 = 1; x3 = 0; x4 = 0; //1

    end

endmodule