module CLA_32(A,B,c0,S,px,gx);
     input [32:1] A;
	 input [32:1] B;
	input c0;
	output gx,px;
	output [32:1] S;

	wire c4,c8,c12,c16,c20,c24,c28;
	wire Pm1,Gm1,Pm2,Gm2,Pm3,Gm3,Pm4,Gm4,Pm5,Gm5,Pm6,Gm6,Pm7,Gm7,Pm8,Gm8;
	adder_4 adder1(
	     .x(A[4:1]),
		  .y(B[4:1]),
		  .c0(c0),
		  .c4(),
		  .F(S[4:1]),
		  .Gm(Gm1),
		  .Pm(Pm1)
	);
	
	adder_4 adder2(
	     .x(A[8:5]),
		  .y(B[8:5]),
		  .c0(c4),
		  .c4(),
		  .F(S[8:5]),
		  .Gm(Gm2),
		  .Pm(Pm2)
	);
	
    adder_4 adder3(
	     .x(A[12:9]),
		  .y(B[12:9]),
		  .c0(c8),
		  .c4(),
		  .F(S[12:9]),
		  .Gm(Gm3),
		  .Pm(Pm3)
	);

    adder_4 adder4(
	     .x(A[16:13]),
		  .y(B[16:13]),
		  .c0(c12),
		  .c4(),
		  .F(S[16:13]),
		  .Gm(Gm4),
		  .Pm(Pm4)
	);

    	adder_4 adder5(
	     .x(A[20:17]),
		  .y(B[20:17]),
		  .c0(c16),
		  .c4(),
		  .F(S[20:17]),
		  .Gm(Gm5),
		  .Pm(Pm5)
	);
	
	adder_4 adder6(
	     .x(A[24:21]),
		  .y(B[24:21]),
		  .c0(c20),
		  .c4(),
		  .F(S[24:21]),
		  .Gm(Gm6),
		  .Pm(Pm6)
	);
	
    adder_4 adder7(
	     .x(A[28:25]),
		  .y(B[28:25]),
		  .c0(c24),
		  .c4(),
		  .F(S[28:25]),
		  .Gm(Gm7),
		  .Pm(Pm7)
	);

    adder_4 adder8(
	     .x(A[32:29]),
		  .y(B[32:29]),
		  .c0(c28),
		  .c4(),
		  .F(S[32:29]),
		  .Gm(Gm8),
		  .Pm(Pm8)
	);
	
	assign   c4 = Gm1 ^ (Pm1 & c0),
	         c8 = Gm2 ^ (Pm2 & Gm1) ^ (Pm2 & Pm1 & c0),
			 c12 = Gm3 ^ (Pm3 & Gm2) ^ (Pm3 & Pm2 & Gm1) ^ (Pm3 & Pm2 & Pm1 & c0),
             c16 = Gm4 ^ (Pm4 & Gm3) ^ (Pm4 & Pm3 & Gm2) ^ (Pm4 & Pm3 & Pm2 & Gm1) ^ (Pm4 & Pm3 & Pm2 & Pm1 &c0),
             c20 = Gm5 ^ (Pm5 & Gm4)^(Pm5 & Pm4 & Gm3)^(Pm5 & Pm4 & Pm3 & Gm2)^(Pm5 & Pm4 & Pm3 & Pm2 & Gm1)^(Pm5 & Pm4 & Pm3 & Pm2 & Pm1 & c0),
             c24 = Gm6 ^ (Pm6 & Gm5)^(Pm6 & Pm5 & Gm4)^(Pm6 & Pm5 & Pm4 & Gm3)^(Pm6 & Pm5 & Pm4 & Pm3 & Gm2)^(Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Gm1)^(Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Pm1 & c0),
             c28 = Gm7 ^(Pm7 & Gm6)^(Pm7 & Pm6 & Gm5)^(Pm7 & Pm6 & Pm5 & Gm4)^(Pm7 & Pm6 & Pm5 & Pm4 & Gm3)^(Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Gm2)^(Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Gm1)^(Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Pm1 & c0);
 
    assign  px = Pm1 & Pm2 & Pm3 & Pm4 & Pm5 & Pm6 & Pm7 & Pm8,
	        gx = Gm8 ^ (Pm8 & Gm7) ^ (Pm8 & Pm7 & Gm6) ^ (Pm8 & Pm7 & Pm6 & Gm5)^ (Pm8 & Pm7 & Pm6 & Pm5 & Gm4)^ (Pm8 & Pm7 & Pm6 & Pm5 & Pm4 & Gm3)^ (Pm8 & Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Gm2)^ (Pm8 & Pm7 & Pm6 & Pm5 & Pm4 & Pm3 & Pm2 & Gm1);

endmodule 

