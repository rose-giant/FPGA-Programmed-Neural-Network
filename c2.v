module c2(input d0, d1, d2, d3, A0, A1, B0, B1, output reg out);
    wire s1, s0;
    wire [1:0] sel;

    assign s1 = A1 | B1;
    assign s0 = A0 & B0;

    assign sel[1] = s0;
    assign sel[0] = s1;

    always @(sel) begin
      case(sel)
        2'b00: out <= d0;
        2'b01: out <= d1;
        2'b10: out <= d2;
        2'b11: out <= d3;
      endcase
    end

endmodule