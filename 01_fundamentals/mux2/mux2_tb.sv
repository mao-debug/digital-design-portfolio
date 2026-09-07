`timescale 1ns/1ps

module mux2_tb;

    //testbench signals
    logic a;
    logic b;
    logic sel;
    logic y;

    //expected output and counters
    int total_tests;
    int passed_tests;
    int failed_tests;

    //device under test
    mux2 dut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    //Use Tasks to run tests
    task run_test(
    input logic test_a,
    input logic test_b,
    input logic test_sel,
    input logic expected_y
    );

        a = test_a;
        b = test_b;
        sel = test_sel;

        #10;

        total_tests++;

        if (y == expected_y) begin
            passed_tests++;
        end
        else begin
            failed_tests++;
            $display("FAIL: a=%b b=%b sel=%b expected=%b actual=%b", a, b, sel, expected_y, y);
        end
    endtask
    
    initial begin

        //Initialize Counters
        total_tests = 0;
        passed_tests = 0;
        failed_tests = 0;

        // Run tests through tasks
        run_test(1'b0, 1'b0, 1'b0, 1'b0);
        run_test(1'b0, 1'b1, 1'b0, 1'b0);
        run_test(1'b1, 1'b0, 1'b0, 1'b1);
        run_test(1'b1, 1'b1, 1'b0, 1'b1);
        run_test(1'b0, 1'b0, 1'b1, 1'b0);
        run_test(1'b0, 1'b1, 1'b1, 1'b1);
        run_test(1'b1, 1'b0, 1'b1, 1'b0);
        run_test(1'b1, 1'b1, 1'b1, 1'b1);
    

        // Final summary
        $display("========================");
        $display("Tests run:    %0d", total_tests);
        $display("Tests passed: %0d", passed_tests);
        $display("Tests failed: %0d", failed_tests);
        $display("========================");
    
     $finish;
 end
endmodule
