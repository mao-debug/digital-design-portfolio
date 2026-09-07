# Digital Design & RTL Portfolio

A growing collection of SystemVerilog RTL designs and verification exercises focused on building practical digital design fundamentals and progressing toward larger RTL systems.

This repository documents my development in combinational logic, sequential logic, RTL coding, simulation, and verification. Each project includes synthesizable RTL and a corresponding SystemVerilog testbench.

## Current Projects

### 01 — Digital Design Fundamentals

| Project         | Concepts Demonstrated                                                              | Verification                                                     |
| --------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| AND Gate        | Combinational logic, continuous assignment                                         | Exhaustive testing of all input combinations                     |
| 2:1 Multiplexer | Boolean implementation of selection logic                                          | Exhaustive testing of all `a`, `b`, and `sel` combinations       |
| D Flip-Flop     | Sequential logic, rising-edge capture, asynchronous reset, nonblocking assignments | Directed tests for capture, reset, and state retention           |
| 4-Bit Register  | Multi-bit sequential storage, asynchronous reset, clocked data capture             | Directed tests for reset, hold behavior, and rising-edge capture |

## Repository Structure

```text
digital-design-portfolio/
├── 01_fundamentals/
│   ├── and_gate/
│   │   ├── and_gate.sv
│   │   └── and_gate_tb.sv
│   ├── mux2/
│   │   ├── mux2.sv
│   │   └── mux2_tb.sv
│   ├── dff/
│   │   ├── dff.sv
│   │   └── dff_tb.sv
│   └── register4/
│       ├── register4.sv
│       └── register4_tb.sv
└── docs/
```

## Verification Approach

Current projects use directed SystemVerilog testbenches to verify expected behavior through simulation.

Verification work so far includes:

* exhaustive input testing for small combinational circuits
* reusable testbench tasks
* pass/fail checking and test counters
* clock generation for sequential designs
* asynchronous reset testing
* checking state retention between clock edges
* checking data capture on rising clock edges

The verification methodology will become more advanced as the designs increase in complexity.

## Tools

* SystemVerilog
* Icarus Verilog
* Git / GitHub

## Current Focus

I am currently strengthening RTL fundamentals before progressing into more complex digital systems.

Planned areas of development include:

* counters and parameterized RTL
* finite-state machines
* arithmetic logic units and datapaths
* stronger SystemVerilog verification techniques
* FIFOs and communication interfaces
* synthesis and timing fundamentals

## Goal

The goal of this portfolio is not simply to collect HDL examples. Each project is used to practice designing, explaining, testing, and debugging RTL with an increasing level of complexity.

The repository will continue to evolve toward larger projects representative of digital design, RTL, FPGA, and ASIC engineering work.
