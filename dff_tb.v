`include "dff.v"

module dff_tb;  
    reg clk, d, clr;
    reg [2:0] delay;  

    dff  dff0( .d(d), .clr (clr), .clk (clk), .q (q));  
      
        initial begin
            $dumpfile("dff.vcd");
            $dumpvars(0, dff_tb);

            #10;
            clk = 1;
            d = 0;
            clr = 0; //0

            #10;
            clk = ~clk;
            d = 0;
            clr = 0; //0

            #10;
            clk = ~clk;
            d = 1;
            clr = 0; //1

            #10;
            clk = ~clk;
            d = 0;
            clr = 1; //0

            #10;
            clk = ~clk;
            d = 0;
            clr = 1; //0

            #10;
            clk = ~clk;
            d = 1;
            clr = 1; //1
            
            #10;
            clk = ~clk;
            d = 1;
            clr = 0; //1

            #10;
        end  
    endmodule  