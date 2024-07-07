module mux128_tb;
reg clk;       
reg rst_n;    
reg start;    
reg[127:0] ain;    
reg[127:0] bin;    

wire[255:0] yout; 
wire done;
mux128 u_mux128 (
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
    ain = 128'b0;
    bin = 128'b0;
    #1000;
    rst_n = 1'b1;    //1us
    
    #1000;
    ain = 128'h0111_0000_0000_0000_0000_0000_1010_0000;
    bin = 128'h0000_0000_0000_1111_1111_0000_0000_0000;
    #100;
    start = 1'b1;
    #1000_000;
    start = 1'b0;
    #1000_000;
    $stop;
end
endmodule