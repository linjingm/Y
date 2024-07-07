module kara_top (
    clk,rst_n,start,x,y,z
);
    input [127:0] x;
    input [127:0] y;
    input clk;
    input rst_n;
    input start;
    output [255:0]z;

wire [127:0] z1,z2,z3,x1,x2,y1,y2,z2_1,z2_2;

wire flag1;wire flag2;wire flag3,flag4,flag5;

reg [127:0] x_r;  reg [63:0] x1_r,x2_r;
reg [127:0] y_r;  reg [63:0] y1_r,y2_r;
reg start_mux128;
reg [127:0] z2_1r,z2_2r;

reg [255:0] z_1r,z_2r,z_3r;
wire [255:0] z_1,z_2,z_3;

wire [255:0] z1ADDz2;

//拆分乘数、接口

assign x1 = x1_r, x2 = x2_r;
assign y1 = y1_r, y2 = y2_r;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        x_r <= 0; x1_r <= 0; x2_r <= 0;
        y_r <= 0; y1_r <= 0; y2_r <= 0;
        start_mux128 <= 1'b0;
    end
    else if(start)begin
        x_r <= x; x1_r <= x[127:64]; x2_r <= x[63:0];
        y_r <= y; y1_r <= y[127:64]; y2_r <= y[63:0];
        start_mux128 <= 1'b1;
    end
end

//计算z1,z2,z3

//[128]*[128]=[256]
// wire [255:0] z2,z3;
//z1=x1*y1
mux64 u1(
    .clk(clk),
    .rst_n(rst_n),
    .start(start),
    .ain(x1_r),
    .bin(y1_r),
    .yout(z1),
    .done(flag1)
);
// mux64 u1(
//     .clk(clk),
//     .rst_n(rst_n),
//     .start(start_mux128),
//     .ain(x1_r),
//     .bin(y1_r),
//     .yout(z1),
//     .done(flag1)
// );
//z3=x2*y2

mux64 u2(
    .clk(clk),
    .rst_n(rst_n),
    .start(start_mux128),
    .ain(x2_r),
    .bin(y2_r),
    .yout(z3),
    .done(flag2)
);
//z2=x1*y2+x2*y1

mux64 u3(
    .clk(clk),
    .rst_n(rst_n),
    .start(start_mux128),
    .ain(x1_r),
    .bin(y2_r),
    .yout(z2_1),
    .done(flag3)
);

mux64 u4(
    .clk(clk),
    .rst_n(rst_n),
    .start(start_mux128),
    .ain(x2_r),
    .bin(y1_r),
    .yout(z2_2),
    .done(flag4)
);

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        z2_1r <= 128'b0;z2_2r <= 128'b0;
    end
    else if (flag4 && flag5)begin
        z2_1r <= z2_1;
        z2_2r <= z2_2;
    end
end

adder_128bit u5(
    .din_one(z2_1),
    .din_two(z2_2),
    .cin(1'b0),
    .sum(z2),
    .cout(),
    .done(flag5)
);

//计算z
//z=z1 << 256 + z2 << 128 + z3
//[512]
//增大位宽
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        z_1r <= 256'b0;z_2r <= 256'b0;z_3r <= 256'b0;
    end
    else if (flag1 && flag2 && flag5)begin
        z_1r <= (z1 << 128);
        z_2r <= (z2 << 64);
        z_3r <= z3;
    end
end
assign z_1 = z_1r, z_2 = z_2r, z_3 = z_3r;

adder_256bit u6(
    .din_one(z_1),
    .din_two(z_2),
    .cin(1'b0),
    .sum(z1ADDz2),
    .cout()
);

adder_256bit u7(
    .din_one(z1ADDz2),
    .din_two(z_3),
    .cin(1'b0),
    .sum(z),
    .cout()
);
 
    
endmodule