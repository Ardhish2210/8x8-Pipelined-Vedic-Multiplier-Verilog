module SQRT_CSLA_CBL_8bit (
    input [7:0] A, B,
    input Cin,
    output [7:0] Sum,
    output Cout
);
    wire C1, C2, C3;  // Internal carry signals

    // First 2-bit adder
    CSLA_CBL_2bit U0 (A[1:0], B[1:0], Cin, Sum[1:0], C1);
    
    // Next 3-bit adder
    CSLA_CBL_3bit U1 (A[4:2], B[4:2], C1, Sum[4:2], C2);
    
    // Next 3-bit adder
    CSLA_CBL_3bit U2 (A[7:5], B[7:5], C2, Sum[7:5], Cout);

endmodule