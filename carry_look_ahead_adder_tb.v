`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 02:14:13 PM
// Design Name: 
// Module Name: carry_look_ahead_adder_tb
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


module carry_look_ahead_adder_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    
    wire [3:0] Sum;
    wire Cout;
    
  
    carry_look_ahead_adder s2(.A(A), .B(B), .Cin(Cin), .Cout(Cout), .Sum(Sum));
    
    initial
    begin 
        A = 4'b0001; B = 4'b0000; Cin = 0; #1;
        A = 4'b0010; B = 4'b0100; Cin = 1; #1;
        A = 4'b1011; B = 4'b0110; Cin = 0; #1;
        A = 4'b0101; B = 4'b0011; Cin = 1; #1;
        $finish;
    end
    
endmodule
