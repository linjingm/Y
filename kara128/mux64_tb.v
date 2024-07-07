module mux64_tb;
reg clk;       
reg rst_n;    
reg start;    
reg[63:0] ain;    
reg[63:0] bin;    

wire[127:0] yout; 
wire done;
mux64 u_mux64 (
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .ain(ain),
    .bin(bin),
    .yout(yout),
    .done(done)
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
    ain = 64'h0111_0000_0000_0000;
    bin = 64'h0000_0000_0000_1111;
    #100;
    start = 1'b1;
    #1000_000;
    start = 1'b0;
    #1000_000;
    $stop;
end
endmodule