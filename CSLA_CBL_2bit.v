module CSLA_CBL_2bit (
    input [1:0] A, B,
    input Cin,
    output [1:0] Sum,
    output Cout
);
    wire P0, P1, G0, G1, C1;

    assign P0 = A[0] ^ B[0];  
    assign P1 = A[1] ^ B[1];
    assign G0 = A[0] & B[0];  
    assign G1 = A[1] & B[1];

    assign C1 = G0 | (P0 & Cin);
    assign Cout = G1 | (P1 & C1);

    assign Sum[0] = P0 ^ Cin;
    assign Sum[1] = P1 ^ C1;

endmodule