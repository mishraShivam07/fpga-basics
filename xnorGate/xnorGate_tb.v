`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2026 18:15:06
// Design Name: 
// Module Name: xnorGate_tb
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


module xnorGate_tb;
reg a;
reg b;
wire c;
xnorGate uut(.a(a),.b(b),.c(c));
initial begin
a=0;b=0;
#10;
a=0;b=1;
#10;
a=1;b=0;
#10;
a=1;b=1;
#10;
$finish;
end
endmodule
