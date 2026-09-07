`timescale 1ns/1ps

module dff_tb;

    //testbench signals
    logic clk;
    logic reset;
    logic d;
    logic q;
  
    //device under test
    dff dut (
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
    
//Testcases
initial begin
    reset = 1'b0;
    d = 1'b1;
    
    #6;
        if (q == 1'b1) begin
            $display("PASS: Store Value on Rising Edge");
        end
        else begin
            $display("FAIL: Store Value on Rising Edge");
        end
    
    #2;
    reset = 1'b1;

    #1;
        if (q == 1'b0) begin
            $display("PASS: Asynchronous Reset");
        end
        else begin
            $display("FAIL: Asynchronous Reset");
        end

    #5;
    d = 1'b0;
    reset = 1'b0;
    
    #2;
        if (q == 1'b0) begin
            $display("PASS: Remain/Capture 0");
        end
        else begin
            $display("FAIL: Remain/Capture 0");
        end
    #1;
       d = 1'b1;

    #1;
        if (q == 1'b0) begin
            $display("PASS: Store Prev Value w/o Rising Edge");
        end
        else begin
            $display("FAIL: Store Prev Value w/o Rising Edge");
        end
    
    #8;
        if (q == 1'b1) begin
            $display("PASS: Store Value on Rising Edge");
        end
        else begin
            $display("FAIL: Store Value on Rising Edge");
        end
    $finish;
end
    
endmodule
