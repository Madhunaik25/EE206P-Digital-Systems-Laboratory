module jk_with_sr(clk, J, K, Q, Qb,rst);
    input clk;
    input J;
    input K;
    input rst; 
    output reg Q;
    output Qb;

    always @(posedge clk)
    begin
    if(rst == 1)
     Q <= 1'b0;
    else
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

