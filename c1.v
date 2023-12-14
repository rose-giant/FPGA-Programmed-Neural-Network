module c1(input A0, A1, B0, B1, S0, S1, SA, SB, output f);
    
    wire f1, f2, s2;

    assign f1 = SA ? A1 : A1;
    assign f2 = SB ? B1 : B0;
    assign s2 = S0 | S1;
    assign f = s2 ? f1 : f2;

endmodule