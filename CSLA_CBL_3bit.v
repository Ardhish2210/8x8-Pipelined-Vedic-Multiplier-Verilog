module CSLA_CBL_3bit (
    input [2:0] A, B,
    input Cin,
    output [2:0] Sum,
    output Cout
);
    wire P0, P1, P2, G0, G1, G2, C1, C2;

    assign P0 = A[0] ^ B[0];  
    assign P1 = A[1] ^ B[1];
    assign P2 = A[2] ^ B[2];
    
    assign G0 = A[0] & B[0];  
    assign G1 = A[1] & B[1];
    assign G2 = A[2] & B[2];

    assign C1 = G0 | (P0 & Cin);
    assign C2 = G1 | (P1 & C1);
    assign Cout = G2 | (P2 & C2);

    assign Sum[0] = P0 ^ Cin;
    assign Sum[1] = P1 ^ C1;
    assign Sum[2] = P2 ^ C2;

endmodule