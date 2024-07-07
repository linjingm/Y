//64位并行进位加法器顶层模块
module adder64(A,B,S,C64);
     input [64:1] A;
	 input [64:1] B;
	 output [64:1] S;
	 output C64;
	 
	 wire px1,gx1,px2,gx2;
	 wire c32;

  CLA_32 CLA1(
      .A(A[32:1]),
		.B(B[32:1]),
		.c0(0),
		.S(S[32:1]),
		.px(px1),
		.gx(gx1)
	);
  
  CLA_32 CLA2(
        .A(A[64:33]),
		  .B(B[64:33]),
		  .c0(c32),
		  .S(S[64:33]),
		  .px(px2),
		  .gx(gx2)
	);

  assign c32 = gx1 ^ (px1 && 0), //c0 = 0
         C64 = gx2 ^ (px2 && c32);

endmodule 

