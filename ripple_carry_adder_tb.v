`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 02:30:44 PM
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();
    reg [3:0] At;
    reg [3:0] Bt;
    reg Cin;
    
    wire [3:0] Sum;
    wire Cout;
    
    
    ripple_carry_adder s1(.A(At), .B(Bt), .S(Sum), .Cout(Cout));
    
    initial
    begin 
        At = 4'b0001; Bt = 4'b0000; Cin = 0; #1;
        At = 4'b0010; Bt = 4'b0100; Cin = 1; #1;
        At = 4'hb; Bt = 4'h6; Cin = 0; #1;
        At = 4'b0101; Bt = 4'b0011; Cin = 1; #1;
        $finish;
    end
    
endmodule
