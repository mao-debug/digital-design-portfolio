`timescale 1ns/1ps

module and_gate_tb;

    // Testbench signals
    reg a;
    reg b;
    wire y;

    // Expected output and counters
    reg expected;
    reg total_tests;
    reg passed_tests;
    reg failed_tests;

    // Device Under Test
    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin

        // Initialize counters
        total_tests = 0;
        passed_tests = 0;
        failed_tests = 0;


        // Test 1: 0 AND 0 = 0
        a = 0;
        b = 0;
        expected = 0;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b expected=%b actual=%b",
                a, b, expected, y
            );
        end


        // Test 2: 0 AND 1 = 0
        a = 0;
        b = 1;
        expected = 0;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b expected=%b actual=%b",
                a, b, expected, y
            );
        end


        // Test 3: 1 AND 0 = 0
        a = 1;
        b = 0;
        expected = 0;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b expected=%b actual=%b",
                a, b, expected, y
            );
        end


        // Test 4: 1 AND 1 = 1
        a = 1;
        b = 1;
        expected = 1;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b expected=%b actual=%b",
                a, b, expected, y
            );
        end


        // Final summary
        $display("========================");
        $display("Tests run:    %0d", total_tests);
        $display("Tests passed: %0d", passed_tests);
        $display("Tests failed: %0d", failed_tests);
        $display("========================");

        $finish;

    end

endmodule
