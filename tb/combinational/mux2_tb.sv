`timescale 1ns/1ps

module mux2_tb;

    reg a;
    reg b;
    reg sel;
    wire y;
    reg expected;
    reg total_tests
    reg passed_tests
    reg failed_tests

    mux2 dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin

        a = 0; b = 0;
        #10;

        a = 0; b = 1;
        #10;

        a = 1; b = 0;
        #10;

        a = 1; b = 1;
        #10;

        $finish;
    end

endmodule
