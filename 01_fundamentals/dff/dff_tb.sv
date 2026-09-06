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

  
