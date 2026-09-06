`timescale 1ns/1ps

module register4_tb;

    //testbench signals
    logic clk;
    logic reset;
    logic [3:0] d;
    logic [3:0] q;

    //expected output and counters
    reg expected;
    reg total_tests;
    reg passed_tests;
    reg failed_tests;

      //device under test
    register4 dut (
      .clk(clk),
      .reset(reset),
      .d(d),
      .d(d)
    );

      initial begin

        // Initialize counters
        total_tests = 0;
        passed_tests = 0;
        failed_tests = 0;

        // Test 1
        reset = 1
        expected = 0000
        if begin q == expected
          passed_test++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: q=%b expected=%b", expected, q
        end
            );
