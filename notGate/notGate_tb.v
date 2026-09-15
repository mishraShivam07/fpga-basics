`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2026 18:10:33
// Design Name: 
// Module Name: notGate_tb
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


module notGate_tb;
reg a;
wire b;
notGate uut(.a(a),.b(b));
initial begin
a=0;
#10;
a=1;
#10;
$finish;
end
endmodule
