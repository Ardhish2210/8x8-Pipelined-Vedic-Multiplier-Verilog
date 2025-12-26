module four_bit_ripple_adder (
    g,h,carryin,summation,carryout
);
    input [3:0] g,h;
    output [3:0] summation;
    output carryout;
    input carryin;

    wire c1, c2, c3, c4, c0;

    full_adder f1 (.e(g[0]), .f(h[0]), .cin(carryin), .sum(summation[0]), .cout(c0));
    full_adder f2 (.e(g[1]), .f(h[1]), .cin(c0), .sum(summation[1]), .cout(c1));
    full_adder f3 (.e(g[2]), .f(h[2]), .cin(c1), .sum(summation[2]), .cout(c2));
    full_adder f4 (.e(g[3]), .f(h[3]), .cin(c2), .sum(summation[3]), .cout(carryout));
endmodule