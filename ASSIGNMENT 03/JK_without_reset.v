module jk_without_r(clk, J, K, Q, Qb);
    input clk;
    input J;
    input K;
    output reg Q;
    output Qb;

    always @(posedge clk) begin
        if (J==0 && K==0)  
            Q <= Q;
        else if (J==0 && K==1)   
            Q <= 0;
        else if (J==1 & K==0)   
            Q <= 1;
        else             
            Q <= ~Q;
    end

    assign Qb = ~Q;
endmodule

