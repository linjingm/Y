module mux32_tb;
reg clk;       
reg rst_n;    
reg start;    
reg[31:0] ain;    
reg[31:0] bin;    

wire[63:0] yout; 

mux32 u_mux32 (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .ain(ain),
    .bin(bin),
    .yout(yout)
);

initial begin
    clk = 0;
    forever 
    #10 clk = ~clk;    //50MHz
end

initial begin
    rst_n = 1'b0;
    start = 1'b0;
    ain = 64'b0;
    bin = 64'b0;
    #1000;
    rst_n = 1'b1;    //1us
    
    #1000;
    ain = 64'd89;
    bin = 64'd33;
    #100;
    start = 1'b1;
    #4500;
    start = 1'b0;
    #1000_000;
    $stop;
end
endmodule