module eight_bit_ripple_adder (
    g_1, h_1, carryin_1, summation_1, carryout_1
);
    input [7:0] g_1,h_1;
    output [7:0] summation_1;
    output carryout_1;
    input carryin_1;

    wire c1_1, c2_1, c3_1, c4_1, c5_1, c6_1, c0_1;

    full_adder f1 (.e(g_1[0]), .f(h_1[0]), .cin(carryin_1), .sum(summation_1[0]), .cout(c0_1));
    full_adder f2 (.e(g_1[1]), .f(h_1[1]), .cin(c0_1), .sum(summation_1[1]), .cout(c1_1));
    full_adder f3 (.e(g_1[2]), .f(h_1[2]), .cin(c1_1), .sum(summation_1[2]), .cout(c2_1));
    full_adder f4 (.e(g_1[3]), .f(h_1[3]), .cin(c2_1), .sum(summation_1[3]), .cout(c3_1));
    full_adder f5 (.e(g_1[4]), .f(h_1[4]), .cin(c3_1), .sum(summation_1[4]), .cout(c4_1));
    full_adder f6 (.e(g_1[5]), .f(h_1[5]), .cin(c4_1), .sum(summation_1[5]), .cout(c5_1));
    full_adder f7 (.e(g_1[6]), .f(h_1[6]), .cin(c5_1), .sum(summation_1[6]), .cout(c6_1));
    full_adder f8 (.e(g_1[7]), .f(h_1[7]), .cin(c6_1), .sum(summation_1[7]), .cout(carryout_1));
endmodule