module adder_128bit (
    input [127:0] din_one,
    input [127:0] din_two,
    input cin,
    output [127:0] sum,
    output cout,
    output done
);
 
wire cin1;
assign done = (sum)?1'b1:1'b0;
adder_64bit u1(
    .din_one(din_one[63:0]),
    .din_two(din_two[63:0]),
    .cin(cin),
    .sum(sum[63:0]),
    .cout(cin1)
);

adder_64bit u2(
    .din_one(din_one[127:64]),
    .din_two(din_two[127:64]),
    .cin(cin1),
    .sum(sum[127:64]),
    .cout(cout)
);
 
endmodule //full_adder