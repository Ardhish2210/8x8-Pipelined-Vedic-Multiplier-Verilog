module vedic_four (
    x,y,q
);
    input [3:0] x,y;
    output [7:0] q; 
    wire [3:0] w1, w2, w3, w4;
    wire carry0,carry1,carry2, sum_ha, carry_ha;
    wire [3:0] s1,s2,s3; 

// w1[1:0] == final output me hai ye (LSB)
// s2[1:0] == final output me hai ye
// s3[3:0] == final output me hai ye (MSB)

    
    vedic_two m1 (.a(x[1:0]), .b(y[1:0]), .out(w1[3:0]));
    vedic_two m2 (.a(x[1:0]), .b(y[3:2]), .out(w2[3:0]));
    vedic_two m3 (.a(x[3:2]), .b(y[1:0]), .out(w3[3:0]));
    vedic_two m4 (.a(x[3:2]), .b(y[3:2]), .out(w4[3:0]));

    four_bit_ripple_adder r1 (.g(w2[3:0]), .h(w3[3:0]), .summation(s1[3:0]), .carryout(carry0), .carryin(1'b0));
    four_bit_ripple_adder r2 (.g(s1[3:0]), .h({1'b0, 1'b0, w1[3:2]}), .summation(s2[3:0]), .carryout(carry1), .carryin(1'b0));
    four_bit_ripple_adder r3 (.g(w4[3:0]), .h({carry_ha, sum_ha, s2[3:2]}), .summation(s3[3:0]), .carryout(carry2), .carryin(1'b0));
    half_adder h1 (.x(carry0), .y(carry1), .sum(sum_ha), .cout(carry_ha));

    assign q = {carry2, s3[3:0], s2[1:0], w1[1:0]};
    
endmodule