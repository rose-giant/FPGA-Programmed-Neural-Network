`include "twos.v"

module twos_tb();
    reg [9:0] in;
    wire [9:0] out;

    twos twos0(in, out);

    initial begin
        $dumpfile("twos.vcd");
        $dumpvars(0, twos_tb);

        #20;
        in = 10'b1000111001;
        #20;
        in = 10'b1000111000;
        #20;
    end
endmodule