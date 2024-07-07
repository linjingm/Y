module kara_tb;
reg clk;       
reg rst_n;    
reg start;    
reg[127:0] y;    
reg[127:0] x;    
wire[255:0] z;

kara_top u(
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .x(x),
    .y(y),
    .z(z)
);

initial begin
    clk = 0;
    forever 
    #10 clk = ~clk;    //50MHz
end

initial begin
    rst_n = 1'b0;
    start = 1'b0;
    x = 128'b0;
    y = 128'b0;
    #1000;
    rst_n = 1'b1;    //1us
    #1000;
    x = 128'h0111_0000_0000_0000_0000_0000_1010_0000_0000;
    y = 128'h0111_0000_0000_0000_0000_0000_1010_0000_0000;
    #100;
    start = 1'b1;
    #1000_000;
    start = 1'b0;
    #1000_000;
    $stop;
end
endmodule