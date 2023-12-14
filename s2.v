`include "dff.v"

module s2(input [3:0] d, input A0, B0, A1, B1, clr, clk, output out);

    wire s0, s1;
    reg r;
    wire [1:0] sel;
    
    assign s1 = A1 | B1;
    assign s0 = A0 & B0;

    assign sel[0] = s0;
    assign sel[1] = s1;
    // assign sel = {s1,s0};

    always @(sel, d) begin
      case(sel)
        2'b00: r <= d[0];
        2'b01: r <= d[1];
        2'b10: r <= d[2];
        2'b11: r <= d[3];
        //2'b11: r <= 1'b1;
      endcase

    end

    dff dff0(r, clr, clk, out);
    

endmodule