`include "mult.v"
`include "twos.v"

module twosmult(input [4:0] a, b , output [9:0] out);
    wire [9:0] s;
    mult mult0(a, b, s);
    twos twos0(s, out);
endmodule