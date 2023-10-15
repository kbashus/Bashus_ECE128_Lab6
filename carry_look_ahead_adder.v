`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Katie Bashus
// 
// Create Date: 10/09/2023 01:40:44 PM
// Design Name: 
// Module Name: carry_look_ahead_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module carry_look_ahead_adder(A, B, Cin, Cout, Sum);
    input [3:0] A;
    input [3:0] B;
    input Cin;
    output Cout;
    output [3:0] Sum;
    
    wire [3:0] p, g, c;
    
    assign p = A ^ B;

    
    assign g = A & B;
  
    
    assign c[0] = Cin;
    assign c[1] = (c[0] & p[0]) | g[0];
    assign c[2] = (c[0] & p[0]&p[1] | g[0]&p[1]) | g[1];
    assign c[3] = (c[0] & p[0]&p[1]&p[2] | g[0]&p[1]&p[2] | g[1]&p[2]) | g[2];
    assign Cout = ((c[0] & p[0]&p[1]&p[2]&p[3] | g[0]&p[1]&p[2]&p[3] | g[1]&p[2]&p[3]) | g[2]) | g[3];
    assign Sum = p ^ c;
    
    
endmodule
