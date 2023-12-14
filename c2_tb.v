`include "c2.v"

module c2_tb();
    reg d0, d1, d2, d3, A0, A1, B0, B1;
    wire out;

    c2 c2_instance(d0, d1, d2, d3, A0, A1, B0, B1, out);

    initial begin
        $dumpfile("c2.vcd");
        $dumpvars(0, c2_tb);

        #20;
        d0 = 0; d1 = 1; d2 = 0; d3 = 1;
        B0 = 1; B1 = 1;
        A0 = 1; A1 = 1; //1

        #20;
        d0 = 0; d1 = 1; d2 = 0; d3 = 1;
        B0 = 0; B1 = 0;
        A0 = 0; A1 = 0; //0

        #20;
        d0 = 0; d1 = 1; d2 = 0; d3 = 1;
        B0 = 1; B1 = 0;
        A0 = 1; A1 = 0; //1

        #30;

    end
endmodule