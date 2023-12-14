`include "s2.v"

module s2_tb();
    reg [3:0]d;
    reg A0, B0, B1, A1, clr, clk;
    wire out;

    s2 s2_instance(d, A0, B0, A1, B1, clr, clk, out);

    initial begin
        $dumpfile("s2.vcd");
        $dumpvars(0, s2_tb);

        clk = 1;

        #10;
        clk = 0;
        d[0] = 0; d[1]=1; d[2] = 1; d[3] = 0;
        A1 = 1; B1 = 1;
        A0 = 1; B0 = 1; clr = 1; //0

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;
        d[0] = 1; d[1]=1; d[2] = 1; d[3] = 1;
        A1 = 1; B1 = 1;
        A0 = 1; B0 = 1; clr = 0; //1

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;
        d[0] = 0; d[1]=1; d[2] = 1; d[3] = 0;
        A1 = 1; B1 = 1; B0 = 0;
        A0 = 1; clr = 0; // 0

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;
        d[0] = 0; d[1]=1; d[2] = 1; d[3] = 0;
        A1 = 0; B1 = 0;
        A0 = 1; B0 = 1; clr = 0; // 1

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

        #10;
        clk = ~clk;

    end

endmodule