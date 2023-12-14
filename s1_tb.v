`include "s1.v"

module s1_tb();
    reg [3:0]d;
    reg A0, B1, A1, clr, clk;
    wire out;

    s1 s1_instance(d, A0, B1, A1, clr, clk, out);

    initial begin
        $dumpfile("s1.vcd");
        $dumpvars(0, s1_tb);

        clk = 1;

        #10;
        clk = 0;
        d[0] = 0; d[1]=1; d[2] = 1; d[3] = 0;
        A1 = 1; B1 = 1;
        A0 = 1; clr = 1; //0

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;
        d[0] = 0; d[1]=1; d[2] = 1; d[3] = 0;
        A1 = 1; B1 = 1;
        A0 = 1; clr = 1; //0

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;
        d[0] = 0; d[1]=1; d[2] = 1; d[3] = 0;
        A1 = 1; B1 = 1;
        A0 = 1; clr = 0; // 1

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;
        d[0] = 0; d[1]=1; d[2] = 1; d[3] = 0;
        A1 = 1; B1 = 1;
        A0 = 1; clr = 0; // 1

        #10;
        clk = ~clk;

    end

endmodule