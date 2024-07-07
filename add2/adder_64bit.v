module adder_64bit (
    input [63:0] din_one,
    input [63:0] din_two,
    input cin,
    output [63:0] sum,
    output cout
);
 
wire cin_0bit;

adder_32bit u1(
    .din_one(din_one[31:0]),
    .din_two(din_two[31:0]),
    .cin(cin),
    .sum(sum[31:0]),
    .cout(cin_0bit)
);

adder_32bit u2(
    .din_one(din_one[63:32]),
    .din_two(din_two[63:32]),
    .cin(cin_0bit),
    .sum(sum[63:32]),
    .cout(cout)
);
 
endmodule //full_adder