module vedic_eight_pipeline (
    i, j, z, clk1
);

input clk1;
input [7:0] i, j;
output reg [15:0] z;

wire [7:0] w_1, w_2, w_3, w_4;
wire [7:0] s_1, s_2, s_3;
wire carry_0, carry_1, carry_2;

reg [7:0] L12_w_1, L12_w_2, L12_w_3, L12_w_4;
reg [7:0] L23_w_1, L23_s_1, L34_s_2, L34_s_3, L45_s_3, L23_w_4;
reg [7:0] L34_w_1, L34_w_4, L45_w_1, L45_s_2;
reg L23_carry_0, L34_carry_0, L34_carry_1, L45_carry_2;

vedic_four v1 (.x(i[3:0]), .y(j[3:0]), .q(w_1));
vedic_four v2 (.x(i[7:4]), .y(j[3:0]), .q(w_2));
vedic_four v3 (.x(i[3:0]), .y(j[7:4]), .q(w_3));
vedic_four v4 (.x(i[7:4]), .y(j[7:4]), .q(w_4));
     
    always @(posedge clk1) begin // STAGE-01
        L12_w_1 <= w_1;
        L12_w_2 <= w_2;
        L12_w_3 <= w_3;
        L12_w_4 <= w_4;
    end

SQRT_CSLA_CBL_8bit r_1 (.A(L12_w_2), .B(L12_w_3), .Sum(s_1), .Cout(carry_0), .Cin(1'b0));
    always @(posedge clk1) begin // STAGE-02
        L23_w_1 <= L12_w_1;
        L23_s_1 <= s_1;
        L23_carry_0 <= carry_0;
        L23_w_4 <= L12_w_4;
    end

SQRT_CSLA_CBL_8bit r_2 (.A({4'b0000, L23_w_1[7:4]}), .B(L23_s_1), .Sum(s_2), .Cout(carry_1), .Cin(1'b0));
    always @(posedge clk1) begin // STAGE-03
        L34_w_1[3:0] <= L23_w_1[3:0];
        L34_s_2 <= s_2;
        L34_carry_1 <= carry_1;
        L34_w_4 <= L23_w_4;
        L34_carry_0 <= L23_carry_0;
    end

SQRT_CSLA_CBL_8bit r_3 (.A(L34_w_4), .B({3'b000, L34_carry_0, L34_s_2[7:4]}), .Sum(s_3), .Cout(carry_2), .Cin(L34_carry_1));
    always @(posedge clk1) begin // STAGE-04
        L45_s_3 <= s_3;
        L45_carry_2 <= carry_2;
        L45_s_2[3:0] <= L34_s_2[3:0];
        L45_w_1[3:0] <= L34_w_1[3:0];
    end

    always @(posedge clk1) begin 
        z <= {L45_carry_2, L45_s_3, L45_s_2[3:0], L45_w_1[3:0]};
    end
endmodule