module dff (input d, clr, clk, output reg q);

    always @ (posedge clk)

        if (clr) 
            q <= 0;

        else if (d) 
            q <= 1;
        
        else if (~d) 
            q <= 0;

endmodule