`timescale 1ns/1ps

module dff(
    input  clk,
    input  reset,
    input  d,
    output logic q
);


always_ff @(posedge clk or posedge reset) begin

      if (reset)
        q <= 1'b0;
    else
        q <= d;
    end

endmodule
