module adder_32bit (
    input [31:0] din_one,
    input [31:0] din_two,
    input cin,
    output [31:0] sum,
    output cout
);
 
wire cin1;

adder_16bit u1(
    .din_one(din_one[15:0]),
    .din_two(din_two[15:0]),
    .cin(cin),
    .sum(sum[15:0]),
    .cout(cin1)
);

adder_16bit u2(
    .din_one(din_one[31:16]),
    .din_two(din_two[31:16]),
    .cin(cin1),
    .sum(sum[31:16]),
    .cout(cout)
);
 
endmodule //full_adder