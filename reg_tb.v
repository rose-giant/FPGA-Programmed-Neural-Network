`include "reg.v"

module reg_tb();
    reg in, ld, rst, clk;
    wire out;

    fpga_reg reg0(in, ld, rst, clk, out);

    initial begin
       $dumpfile("reg.vcd");
       $dumpvars(0, reg_tb);

       clk = 0;
       #10
       clk = ~clk;
       ld = 0;
       rst = 0; //x

       #10
       clk = ~clk;

       #10
       clk = ~clk;
       ld = 0;
       rst = 1; //0

       #10
       clk = ~clk;

       #10
       clk = ~clk;
       in = 1;
       ld = 0;
       rst = 0; //0

       #10
       clk = ~clk;

       #10
       clk = ~clk;
       in = 1;
       ld = 1;
       rst = 0; //1

       #10
       clk = ~clk;

       #10
       clk = ~clk;
       in = 1;
       ld = 1;
       rst = 1;  //0

       #10
       clk = ~clk;

       #10
       clk = ~clk;
       in = 1;
       ld = 1;
       rst = 0; //1

       #10
       clk = ~clk;

    end
endmodule