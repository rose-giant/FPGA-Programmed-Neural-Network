`include "mult.v"

module mult_tb();
    reg [4:0] a, b;
    wire [9:0] out;

    mult mult0(a, b , out);

    initial begin
        $dumpfile("mult.vcd");
        $dumpvars(0, mult_tb);

        #10;
        a = 5'b11111;
        b = 5'b10101; //1.001011

        #10;
        a = 5'b11010;
        b = 5'b01000; //1.0100

        #10;
        a = 5'b00110;
        b = 5'b01100; //1.0010

        #10;
        a = 5'b01111;
        b = 5'b01111; //11.100001

        #20;
    end

endmodule