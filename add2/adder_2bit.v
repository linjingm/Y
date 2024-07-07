module adder_2bit(
    input [1:0] din_one,
    input [1:0] din_two,
    input cin,

    output [1:0] sum,
    output cout
);
    wire cin_0bit;

    adder_1bit u1_low_bit(
        .din_one(din_one[0]),
        .din_two(din_two[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(cin_0bit)
    );

    adder_1bit u2_high_bit(
        .din_one(din_one[1]),
        .din_two(din_two[1]),
        .cin(cin_0bit),
        .sum(sum[1]),
        .cout(cout)
    );

endmodule
