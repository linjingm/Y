module mux16(
            clk,rst_n,
            start,ain,bin,yout,done
        );
        
input clk;        //时钟
input rst_n;    //复位
input start;     //使能，1：读入乘数、被乘数，并将乘积复位清零
input[15:0] ain;    //被乘数a，位宽16
input[15:0] bin;    //乘数b，位宽16
output[31:0] yout;    //乘积，位宽32
output done;        //完成标志

reg[15:0] areg;    
reg[15:0] breg;   
reg[31:0] yout_r;    
reg done_r;
reg[4:0] i;        //移位次数寄存器


//------------------------------------------------
//数据位控制
always @(posedge clk or negedge rst_n)
    if(!rst_n) i <= 5'd0;
    else if(start && i < 5'd17) i <= i+1'b1; 
    else if(!start) i <= 5'd0;

//------------------------------------------------
//完成标志生成
always @(posedge clk or negedge rst_n)
    if(!rst_n) done_r <= 1'b0;
    else if(i == 5'd16) done_r <= 1'b1;        
    else if(i == 5'd17) done_r <= 1'b0;        

assign done = done_r;

//------------------------------------------------
//移位累加
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin 
            areg <= 16'h0000;
            breg <= 16'h0000;
            yout_r <= 32'h00000000;
        end
    else if(start) begin        
            if(i == 5'd0) begin    
                    areg <= ain;
                    breg <= bin;
                end
            else if(i > 5'd0 && i < 5'd17) begin
                    if(areg[i-1]) yout_r = yout_r + ({16'h0000,breg}<<(i-1));    //?????
                    
                end
          
        end
end

assign yout = yout_r;

endmodule