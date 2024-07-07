module adder_256bit (
    input [255:0] din_one,
    input [255:0] din_two,
    input cin,
    output [255:0] sum,
    output cout,
    output done
);
 
wire cin1;
assign done = (sum)?1'b1:1'b0;

adder_128bit u1(
    .din_one(din_one[127:0]),
    .din_two(din_two[127:0]),
    .cin(cin),
    .sum(sum[127:0]),
    .cout(cin1)
);

adder_128bit u2(
    .din_one(din_one[255:128]),
    .din_two(din_two[255:128]),
    .cin(cin1),
    .sum(sum[255:128]),
    .cout(cout)
);
 
endmodule //full_adder