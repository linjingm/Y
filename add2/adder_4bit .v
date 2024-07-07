module adder_4bit (
    input [3:0] din_one,
    input [3:0] din_two,
    input cin,
    output [3:0] sum,
    output cout
);
 
wire cin_0bit;

adder_2bit u1(
    .din_one(din_one[1:0]),
    .din_two(din_two[1:0]),
    .cin(cin),
    .sum(sum[1:0]),
    .cout(cin_0bit)
);

adder_2bit u2(
    .din_one(din_one[3:2]),
    .din_two(din_two[3:2]),
    .cin(cin_0bit),
    .sum(sum[3:2]),
    .cout(cout)
);
 
endmodule //full_adder