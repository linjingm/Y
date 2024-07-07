module adder_16bit (
    input [15:0] din_one,
    input [15:0] din_two,
    input cin,
    output [15:0] sum,
    output cout
);
 
wire cin_0bit;

adder_8bit u1(
    .din_one(din_one[7:0]),
    .din_two(din_two[7:0]),
    .cin(cin),
    .sum(sum[7:0]),
    .cout(cin_0bit)
);

adder_8bit u2(
    .din_one(din_one[15:8]),
    .din_two(din_two[15:8]),
    .cin(cin_0bit),
    .sum(sum[15:8]),
    .cout(cout)
);
 
endmodule //full_adder