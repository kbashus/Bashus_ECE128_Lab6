`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2023 03:34:34 PM
// Design Name: 
// Module Name: Top_tb
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


module Top_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    reg clk = 0;
    reg en;
    wire [15:0] o;
    wire y;
    
        
    Top uut1(.A(A), .B(B), .Cin(Cin), .clk(clk), .en(en), .o(o), .y(y));
    

    initial
    begin
    forever
    begin
    #10 clk = ~clk; //10*2 for full wave
    end
    end
    
    initial
    begin
    forever 
    begin
   
    A = 4'b0001; B = 4'b0010; Cin = 1'b0;
    en = 1;
    #20 //en must catch rising edge of clk
    en = 0;
    #1300;

    A = 4'b0010; B = 4'b0011; Cin = 1'b1;
    en = 1;
    #20 //en must catch rising edge of clk
    en = 0;
    #1300;

    A = 4'b1000; B = 4'b0100; Cin = 1'b0;
    en = 1;
    #20 //en must catch rising edge of clk
    en = 0;
    #1300;
    
 
    A = 4'b0100; B = 4'b0111; Cin = 1'b0;
    en = 1;
    #20 //en must catch rising edge of clk
    en = 0;
    #1300;
    
    end
    end

endmodule
