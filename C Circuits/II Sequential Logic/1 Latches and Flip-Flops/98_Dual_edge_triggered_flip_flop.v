module top_module (
    input clk,
    input d,
    output q
);
	reg q0, q1;
    always @(posedge clk)
        q0 <= d;
    always @(negedge clk)
        q1 <= d;
    assign q = clk ? q0 : q1;
endmodule