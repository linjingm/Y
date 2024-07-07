module adder_8bit (
    input [7:0] din_one,
    input [7:0] din_two,
    input cin,
    output [7:0] sum,
    output cout
);
 
wire cin1;

adder_4bit u1(
    .din_one(din_one[3:0]),
    .din_two(din_two[3:0]),
    .cin(cin),
    .sum(sum[3:0]),
    .cout(cin1)
);

adder_4bit u2(
    .din_one(din_one[7:4]),
    .din_two(din_two[7:4]),
    .cin(cin1),
    .sum(sum[7:4]),
    .cout(cout)
);

 
endmodule //full_adder