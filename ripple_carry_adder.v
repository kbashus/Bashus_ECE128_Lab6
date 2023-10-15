`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Katie Bashus
// 
// Create Date: 09/18/2023 01:37:25 PM
// Design Name: 
// Module Name: four_bit_adder
// Project Name:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ripple_carry_adder(A, B, S, Cout);
    input [3:0] A, B;
    output [3:0] S;
    output Cout;
    wire [3:0] Co;
    assign Cin = 1'b0;
    
    F_adder uud4(.A(A[0]), .B(B[0]), .Cin(Cin), .Cout(Co[0]), .Sum(S[0]));
    F_adder uud1(.A(A[1]), .B(B[1]), .Cin(Co[0]), .Cout(Co[1]), .Sum(S[1]));
    F_adder uud2(.A(A[2]), .B(B[2]), .Cin(Co[1]), .Cout(Co[2]), .Sum(S[2]));
    F_adder uud3(.A(A[3]), .B(B[3]), .Cin(Co[2]), .Cout(Co[3]), .Sum(S[3]));
    
    assign Cout = Co[3];
    
endmodule
