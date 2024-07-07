`timescale  1ns/1ns
module adder64_tb;

  reg [64:1] A;
  reg [64:1] B;
  wire [64:1] S;
  wire c64;
 
  adder64 adder64(
        .A(A),
		  .B(B),
		  .S(S),
		  .C64(c64)
		 );
		 
  initial begin
     A = 64'd0; B = 64'd0;
	  
	  #5;  A = 64'd 45678;  B = 64'd23456;
	  #5;  A = 64'd 24556;  B = 64'd6789;
	  $stop;  
  end
endmodule 

