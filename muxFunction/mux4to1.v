`timescale 1ns / 1ps

module mux4to1(
    input [3:0] d,
    input [1:0] sel,
    output reg y
);
always @(*) begin
    case (sel)
        2'b00: y = d[0];
        2'b01: y = d[1];
        2'b10: y = d[2];
        2'b11: y = d[3];
    endcase
end
endmodule
module function_mux (
    input A,
    input B,
    input C,
    output G
);
wire C_bar;
assign C_bar = ~C;
mux4to1 M1 (
    .d({C, C, C_bar, C}),
    .sel({A, B}),
    .y(G)
);
endmodule