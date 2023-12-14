`include "c1.v"

module c1_tb();
    reg A0, A1, B0, B1, S0, S1, SA, SB;
    wire f;

    c1 c1_instance(A0, A1, B0, B1, S0, S1, SA, SB, f);

    initial begin
        $dumpfile("c1.vcd");
        $dumpvars(0, c1_tb);

        #20;
        A0 = 0; A1 = 1; SA = 1;
        B0 = 0; B1 = 1; SB = 0;
        S0 = 1; S1 = 1; 

        #20;
        A0 = 0; A1 = 1; SA = 1;
        B0 = 0; B1 = 1; SB = 0;
        S0 = 0; S1 = 0; 

        #30;

    end
endmodule