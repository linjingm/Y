`timescale  1ns/1ns
module adder_tb;

  reg [255:0] A;
  reg [255:0] B;
  wire [255:0] sum;
  wire cout;
  wire cin;
  wire done;

  assign cin = 1'b1;
 
adder_256bit u1 (
    .din_one(A),
    .din_two(B),
    .cin(cin),
    .sum(sum),
    .cout(cout),
    .done(done)
);
		 
  initial begin
    A = 256'h0;
    B = 256'h0;
	  #5000;  
    A = 256'hff;  
    B = 256'hff;
	  $stop;  
  end
endmodule 

