module adder_512bit (
    input [511:0] din_one,
    input [511:0] din_two,
    input cin,
    output [511:0] sum,
    output cout
);
 
wire cin1;

adder_256bit u1(
    .din_one(din_one[255:0]),
    .din_two(din_two[255:0]),
    .cin(cin),
    .sum(sum[255:0]),
    .cout(cin1)
);

adder_256bit u2(
    .din_one(din_one[511:256]),
    .din_two(din_two[511:256]),
    .cin(cin1),
    .sum(sum[511:256]),
    .cout(cout)
);
 
endmodule //full_adder