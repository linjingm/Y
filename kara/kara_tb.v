module kara_tb;
reg clk;       
reg rst_n;    
reg start;    
reg[255:0] y;    
reg[255:0] x;    
wire[511:0] z;

wire [255:0] z1,z2,z3;
wire [255:0] x1,x2,y1,y2;
wire [255:0] z2_1,z2_2;

kara_top u1(
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .x(x),
    .y(y),
    .z(z),

    .z1(z1),
    .z2(z2),
    .z3(z3),

    .x1(x1),
    .x2(x2),
    .y1(y1),
    .y2(y2),

    .z2_1(z2_1),
    .z2_2(z2_2)
);

initial begin
    clk = 0;
    forever 
    #10 clk = ~clk;    //50MHz
end

initial begin
    rst_n = 1'b0;
    start = 1'b0;
    x = 256'b0;
    y = 256'b0;
    #1000;
    rst_n = 1'b1;    //1us
    #1000;
    x = 256'h0111_0000_0000_0000_0000_0000_1010_0000_0000_0000_0000_1111_0000_1111_0000_0000;
    y = 256'h0111_0000_0000_0000_0000_0000_1010_0000_0000_0000_0000_1111_0000_1111_0000_0000;
    #100;
    start = 1'b1;
    #1000_000;
    start = 1'b0;
    #1000_000;
    $stop;
end
endmodule