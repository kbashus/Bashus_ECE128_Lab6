`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 03:28:22 PM
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(A, B, Cin, clk, en, o, y);
    input [3:0] A;
    input [3:0] B;
    input Cin;
    input clk;
    input en;
    output [15:0] o;
    output y;
 
    wire [3:0] Sum;
    wire Cout;
    wire [11:0] in_sig;
   
    carry_look_ahead_adder uud1(.A(A), .B(B), .Cin(Cin), .Cout(Cout), .Sum(Sum));
    assign in_sig = {7'b0000000, Cout, Sum};
    bin2BCD uud2(.clk(clk), .en(en), .bin_d_in(in_sig), .bcd_d_out(o), .rdy(y));
    
    
endmodule
