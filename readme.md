# 8-bit ALU in Verilog

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. It supports a variety of arithmetic and logical operations and includes a testbench for simulation.

## Features

- 8-bit wide data inputs (`a`, `b`)
- Supports the following operations via the `select` input:
  - `0000` – Addition (`a + b`)
  - `0001` – Subtraction (`a - b`)
  - `0010` – AND (`a & b`)
  - `0011` – OR (`a | b`)
  - `0100` – XOR (`a ^ b`)
  - `0101` – NOT A (`~a`)
  - `0110` – Logical left shift (`a << 1`)
  - `0111` – Logical right shift (`a >> 1`)
  - `1000` – Set if `a < b`

## Outputs

- `out` – 8-bit result
- `carry` – Carry-out (only for addition)
- `flag` – Zero flag (1 if result is zero)

## Tools Used

- Verilog (RTL design)
- Icarus Verilog (`iverilog`) – Simulation
- GTKWave – Waveform viewer
- Visual Studio Code – Editor

## How to Run

1. After saving the files, compile with:
2. This generates the `ALU` output file.
3. Run the simulation: use the command "iverilog -o (output file name) alu.v testbench.v
   and "vvp (output file name) "
5. Open the waveform in GTKWave:
" gtkwave  alu.vcd " 


## Thank You
