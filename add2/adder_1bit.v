module adder_1bit (
    input  din_one    ,
    input  din_two    ,
    input  cin   ,
    output sum    ,
    output cout  
);
 
assign sum = din_one ^ din_two ^ cin;
assign cout = (din_one & din_two) | (din_two & cin)|(din_one&cin);
 
endmodule
