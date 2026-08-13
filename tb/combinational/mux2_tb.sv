`timescale 1ns/1ps

module mux2_tb;

    //testbench signals
    reg a;
    reg b;
    reg sel;
    wire y;

    //expected output and counters
    reg expected;
    reg total_tests;
    reg passed_tests;
    reg failed_tests;

    //device under test
    mux2 dut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

      initial begin

        // Initialize counters
        total_tests = 0;
        passed_tests = 0;
        failed_tests = 0;


        // Test 1
        a = 0;
        b = 0;
        sel = 0;
        expected = 0;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b sel=%b expected=%b actual=%b",
                a, b, sel, expected, y
            );
        end


        // Test 2
        a = 0;
        b = 1;
        sel = 0;
        expected = 0;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b sel=%b expected=%b actual=%b",
                a, b, sel, expected, y
            );
        end


        // Test 3
        a = 1;
        b = 0;
        sel = 0;
        expected = 1;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b sel=%b expected=%b actual=%b",
                a, b, sel, expected, y
            );
        end


        // Test 4
        a = 1;
        b = 1;
        sel = 0;
        expected = 1;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b sel=%b expected=%b actual=%b",
                a, b, sel, expected, y
            );
        end


        // Test 5
        a = 0;
        b = 0;
        sel = 1;
        expected = 0;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b sel=%b expected=%b actual=%b",
                a, b, sel, expected, y
            );
        end


        // Test 6
        a = 0;
        b = 1;
        sel = 1;
        expected = 1;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b sel=%b expected=%b actual=%b",
                a, b, sel, expected, y
            );
        end


        // Test 7
        a = 1;
        b = 0;
        sel = 1;
        expected = 0;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b sel=%b expected=%b actual=%b",
                a, b, sel, expected, y
            );
        end


        // Test 8
        a = 1;
        b = 1;
        sel = 1;
        expected = 1;

        #10;

        total_tests++;

        if (y == expected) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display(
                "FAIL: a=%b b=%b sel=%b expected=%b actual=%b",
                a, b, sel, expected, y
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
