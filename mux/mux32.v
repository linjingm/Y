module mux32(
            clk,rst_n,
            start,ain,bin,yout,done
        );
        
input clk;        //时钟
input rst_n;    //复位
input start;     //使能，1：读入乘数、被乘数，并将乘积复位清零
input[31:0] ain;    //被乘数a，位宽16
input[31:0] bin;    //乘数b，位宽16
output[63:0] yout;    //乘积，位宽32
output done;        //完成标志

reg[31:0] areg;    
reg[31:0] breg;   
reg[63:0] yout_r;    
reg done_r;
reg[5:0] i;        //移位次数寄存器


//------------------------------------------------
//数据位控制
always @(posedge clk or negedge rst_n)
    if(!rst_n) i <= 6'd0;
    else if(start && i < 6'd33) i <= i+1'b1; 
    else if(!start) i <= 6'd0;

//------------------------------------------------
//完成标志生成
always @(posedge clk or negedge rst_n)
    if(!rst_n) done_r <= 1'b0;
    else if(i == 6'd32) done_r <= 1'b1;        
    else if(i == 6'd33) done_r <= 1'b0;        

assign done = done_r;

//------------------------------------------------
//移位累加
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin 
            areg <= 32'h0000_0000;
            breg <= 32'h0000_0000;
            yout_r <= 64'h0000_0000_0000_0000;
        end
    else if(start) begin        
            if(i == 6'd0) begin    
                    areg <= ain;
                    breg <= bin;
                end
            else if(i > 6'd0 && i < 6'd33) begin
                    if(areg[i-1]) yout_r = yout_r + ({32'h0000_0000,breg}<<(i-1));    //?????
                    
                end
          
        end
end

assign yout = yout_r;

endmodule

// module mux32 (
//     clk,rst_n,
//     start,ain,bin,yout
// );
//     input clk;
//     input rst_n;
//     input start;
//     input [31:0] ain;
//     input [31:0] bin;
//     output [63:0] yout;

//     reg [31:0] ain_r;
//     reg [31:0] bin_r;
//     reg [63:0] yout_r;

//     reg [15:0] x1,x2;
//     reg [15:0] y1,y2;

//     reg [31:0] z1_32,z3_32;
//     reg [31:0] z2_32,z2_1_32,z2_2_32;


// //32位乘数与被乘数，拆成4个16位数
//     always @(posedge clk or negedge rst_n) begin
//         if(!rst_n)begin 
//             ain_r <= 16'h0000;
//             bin_r <= 16'h0000;
//             done_32 <= 1'b0;
//             yout_r <= 32'h00000000;
//         end
//         else if(start) begin
//             x1 <= ain_r[31:16];
//             x2 <= ain_r[15:0];
//             y1 <= bin_r[31:16];
//             y2 <= bin_r[15:0];
//         end
//     end


// //分别计算z1 z2 z3
// mux16 u1_mux(
//     .clk(clk),
//     .rst_n(rst_n),
//     .start(start),
//     .ain(x1),
//     .bin(y1),
//     .yout(z1_32),
//     .done()
// );

// mux16 u3_mux(
//     .clk(clk),
//     .rst_n(rst_n),
//     .start(start),
//     .ain(x2),
//     .bin(y2),
//     .yout(z3_32),
//     .done()
// );

// mux16 u2_1_mux(
//     .clk(clk),
//     .rst_n(rst_n),
//     .start(start),
//     .ain(x1),
//     .bin(y2),
//     .yout(z2_1_32),
//     .done()
// );

// mux16 u2_2_mux(
//     .clk(clk),
//     .rst_n(rst_n),
//     .start(start),
//     .ain(x2),
//     .bin(y1),
//     .yout(z2_2_32),
//     .done()
// );

// reg [31:0] c32; 
// adder32 u_adder32(
//     .A(z2_1_32),
//     .B(z2_2_32),
//     .S(z2_32),
//     .C32(c32)
// );


//     reg [63:0] z1,z2_1,z2_2,z3;

// //移位
// always @(*) begin
//     z1 <= {z1,32'h0000_0000};
//     z3 <= {32'h0000_0000,z3};
//     z2 <= {16'h00,z1ADDz2,16'h00};

// end

// //相加
// reg [63:0] z1ADDz2;
// adder64 u_add1(
//     .A(z1),
//     .B(z2),
//     .S(z1ADDz2),
//     .C64()
// );

// adder64 u_add2(
//     .A(z1ADDz2),
//     .B(z3),
//     .S(yout),
//     .C64()
// );

// endmodule