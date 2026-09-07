`timescale 1ns/1ps

module register4_tb;

    //testbench signals
    logic clk;
    logic reset;
    logic [3:0] d;
    logic [3:0] q;

    //expected output and counters
    logic [3:0] expected;
    int total_tests;
    int passed_tests;
    int failed_tests;

    //device under test
    register4 dut (
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );

    //Clock Generator
    initial begin
        clk = 1'b0;
          forever begin
            #5;
            clk = ~clk;
          end
    end

      initial begin

        // Initialize counters
        total_tests = 0;
        passed_tests = 0;
        failed_tests = 0;
          
        // Test 1
        total_tests++;
        reset = 1'b0;
        d = 4'b0000;
        expected = 4'b0000;

        #1;
        reset = 1'b1;    

        #1;
        if (q == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display("FAIL: q=%b expected=%b", q, expected);
        end

        // Test 2
        total_tests++;
        #1;
        reset = 1'b0;
        d = 4'b1010;
        expected = 4'b0000;

        #1;
        if (q == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display("FAIL: q=%b expected=%b", q, expected);
        end

        // Test 3
        total_tests++;
        #0.5;
        expected = 4'b1010;

        #1;
        if (q == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display("FAIL: q=%b expected=%b", q, expected);
        end
          
        $display("========================");
        $display("Tests run:    %0d", total_tests);
        $display("Tests passed: %0d", passed_tests);
        $display("Tests failed: %0d", failed_tests);
        $display("========================");

        $finish;
    end

endmodule
