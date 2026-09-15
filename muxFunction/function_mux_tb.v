`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2026 18:18:19
// Design Name: 
// Module Name: function_mux_tb
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


module function_mux_tb;
reg A;
reg B;
reg C;
wire G;
function_mux uut(.A(A),.B(B),.C(C),.G(G));
initial begin
A=0;B=0;C=0;
#10;
A=0;B=0;C=1;
#10;
A=0;B=1;C=0;
#10;
A=0;B=1;C=1;
#10;
A=1;B=0;C=0;
#10;
A=1;B=0;C=1;
#10;
A=1;B=1;C=0;
#10;
A=1;B=1;C=1;
#10;
$finish;
end
endmodule
