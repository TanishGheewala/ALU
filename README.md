
# ALU
## Overview 
A Parametric Arithmetic Logic Unit (ALU) written in SystemVerilog suitable for integration into a simple CPU datapath.

An Arithmetic-Logic Unit (ALU) within a CPU takes input, performs operations (arithmetic, logic, shifts, comparisons), and produces an output. A parametric ALU isn't hard-coded and can scale.

### Features
- Takes two operands (A, B), an operation select (op), and produces a result (Y), and optional flags (e.g. overflow).
- Parametric
-

### Title
- 
- 
- 

OP ENCODING TABLE

REPO CONTENTS 

## Setup Development Environment

### Prerequisites
- VS Code with an integrated PowerShell terminal.
- This repository cloned locally.
- [This VS Code extension.](https://marketplace.visualstudio.com/items?itemName=leafvmaple.verilog)

### Installation
- [Download Icarus Verilog & GTKWave](https://bleyer.org/icarus/)
- Make sure to select Full Installation when running the .exe.


## Usage
0. Delete wave.vcd if modifying FILENAME.
1. Run FILENAME.sv using the VS Code extension.
2. Run `gtkwave FILENAME.vcd`