module up_down_counter (
    input clk,
    input btn_reset,
    input direction,
    output reg [3:0] count
);

reg [26:0] clk_div;

always @(posedge clk) begin
    if (btn_reset) begin
        clk_div <= 0;
    end
    else if (clk_div == 27'd99_999_999) begin
        clk_div <= 0;
    end
    else begin
        clk_div <= clk_div + 1;
    end
end

always @(posedge clk) begin
    if (btn_reset) begin
        count <= 4'b0000;
    end
    else if (clk_div == 27'd99_999_999) begin
        if (direction)
            count <= count + 1;
        else
            count <= count - 1;
    end
end

endmodule