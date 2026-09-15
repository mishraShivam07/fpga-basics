`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2026 18:22:34
// Design Name: 
// Module Name: up_down_counter_tb
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


module up_down_counter_tb;
reg clk;
reg btn_reset;
reg direction;
wire [3:0] count;
up_down_counter uut(.clk(clk),.btn_reset(btn_reset),.direction(direction),.count(count));
initial clk=0;
always #5 clk=~clk;
initial begin
btn_reset=1;
direction=1;
#20;
btn_reset=0;
#20;
force uut.clk_div=27'd99_999_999;
#10;
release uut.clk_div;
#10;
force uut.clk_div=27'd99_999_999;
#10;
release uut.clk_div;
direction=0;
#10;
force uut.clk_div=27'd99_999_999;
#10;
release uut.clk_div;
#10;
force uut.clk_div=27'd99_999_999;
#10;
release uut.clk_div;
#20;
$finish;
end
endmodule
