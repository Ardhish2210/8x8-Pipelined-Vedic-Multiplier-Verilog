`timescale 1ps/1ps
`include "vedic_eight.v"

/* module vedic_eight_tb;

reg [7:0] i,j;
wire [15:0] z;
reg clk1, clk2;

vedic_eight_pipeline uut (.i(i), .j(j), .z(z), .clk1(clk1), .clk2(clk2));

initial
    begin
        clk1 = 0; clk2 = 0;
    repeat (20) // Generating two-phase clock
        begin
            #5 clk1 = 1; #5 clk1 = 0;
            #5 clk2 = 1; #5 clk2 = 0;
        end
    end


initial begin

        i = 8'b11111111; j = 8'b11111111; #10; // 255 x 255 = 1111111000000001 (65025)
        i = 8'b10101010; j = 8'b11001100; #10; // 170 * 204 = 34680 (16'b1000011101111000) (correct)
        i = 8'b11100011; j = 8'b10111011; #10; // 227 * 187 = 42449 (16'b1010010111010001) (correct)
        i = 8'b11011101; j = 8'b10010101; #10; // 221 * 149 = 32929 (16'b1000000010100001) (correct)
        i = 8'b10000001; j = 8'b11110000; #10; // 129 * 240 = 30960 (16'b0111100011110000) (correct)
        i = 8'd255; j = 8'd255; #10;
        i = 8'b11111110; j = 8'b11111101; #10; 
        $finish;

end

initial begin
    $monitor("At time %t || a = %b || b = %b || out = %b", $time, i, j, z);
end


endmodule
*/

module vedic_eight_tb;

reg [7:0] i, j;
wire [15:0] z;
reg clk1;

vedic_eight_pipeline uut (.i(i), .j(j), .z(z), .clk1(clk1));

// initial   
//     begin
//         clk1 = 0; clk2 = 0;
//         repeat (200) // Generating two-phase clock
//         begin
//            #5 clk1 = 1; #5 clk1 = 0;
//            #5 clk2 = 1; #5 clk2 = 0;
//         end
//      end

always #5 clk1 = ~clk1;

initial begin
     clk1 = 0;
end

    initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, vedic_eight_tb);

    // TIP: In GTKWave, right-click signal > Format > Decimal to view values in decimal

    @(posedge clk1); i = 8'd0;   j = 8'd0;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd1;   j = 8'd1;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd2;   j = 8'd2;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd3;   j = 8'd3;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd4;   j = 8'd4;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd10;  j = 8'd20;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd15;  j = 8'd30;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd25;  j = 8'd40;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd50;  j = 8'd60;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd75;  j = 8'd85;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd100; j = 8'd110;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd150; j = 8'd160;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd200; j = 8'd210;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd240; j = 8'd250;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    @(posedge clk1); i = 8'd255; j = 8'd255;
    repeat(6) @(posedge clk1);
    $display("Time %t || i = %d || j = %d || z = %d", $time, i, j, z);

    #100 $finish;
end

endmodule 