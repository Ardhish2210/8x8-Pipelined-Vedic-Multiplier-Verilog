Here is the updated **README.md** file for your GitHub repository based on your project structure and the content we discussed:

```markdown
# 8x8 Pipelined Vedic Multiplier on FPGA Using SQRT Carry Select Adder with Common Boolean Logic (CBL)

This repository contains the Verilog implementation of an 8x8 pipelined Vedic multiplier, optimized using a modular approach with Square Root Carry Select Adder (SQRT CSLA) based on Common Boolean Logic (CBL). The design is deployed on the Basys 3 FPGA board (Artix-7) and tested using Xilinx Vivado.

## Project Overview
This project focuses on the implementation of an 8x8 pipelined Vedic multiplier with the following key aspects:

- **Vedic Multiplier (Urdhva Tiryagbhyam Sutra)**: Efficient partial product generation using vertical and crosswise multiplication.
- **Pipelined Architecture**: Multiplier stages partitioned into pipeline stages using register boundaries for continuous data flow.
- **SQRT Carry Select Adder using Common Boolean Logic (CBL)**: Modular 8-bit adder structure using 2-bit and 3-bit blocks to reduce redundancy and improve speed.

## Advantages:
- **Reduced Area**: Eliminates redundant sum and carry circuits.
- **Improved Speed**: Avoids MUX-based selection logic, minimizing logic depth.
- **Power Efficiency**: Lower dynamic power consumption through reduced logic switching.
- **Scalability**: Optimizes delay and area trade-offs for larger bit-widths.

## Directory Structure

```
└── ardhish2210-8x8-pipelined-vedic-multiplier-verilog/
    ├── README.md
    ├── CSLA_CBL_2bit.v          # 2-bit Carry Select Adder (CSLA) module
    ├── CSLA_CBL_3bit.v          # 3-bit Carry Select Adder (CSLA) module
    ├── CSLA_CBL_8bit.v          # 8-bit Carry Select Adder (CSLA) module
    ├── eight_bit_ripple_adder.v # 8-bit Ripple Carry Adder module
    ├── four_bit_ripple_adder.v # 4-bit Ripple Carry Adder module
    ├── full_adder.v             # Full Adder module
    ├── half_adder.v             # Half Adder module
    ├── vedic_eight_pipelined.v  # 8x8 Pipelined Vedic Multiplier
    ├── vedic_eight_pipelined_tb.v # Testbench for 8x8 Pipelined Vedic Multiplier
    ├── vedic_four.v            # 4-bit Vedic Multiplier
    └── vedic_two.v             # 2-bit Vedic Multiplier
```

## Implementation Details:
- **Design Language**: Verilog HDL
- **Toolchain**: Xilinx Vivado for RTL simulation, synthesis, and bitstream generation.
- **Target Board**: Basys 3 FPGA (Artix-7)
- **Verification**: Functional validation using waveform simulations and real-time hardware checks.

## Learning Outcomes:
This project helped me develop a deeper understanding of pipelined datapath design, arithmetic circuit optimization, and hardware resource efficiency on FPGA platforms. It also gave me hands-on experience integrating custom modular adders within pipelined multipliers.

## GitHub Repository:
[🔗 8x8 Pipelined Vedic Multiplier Verilog](https://github.com/Ardhish2210/8x8-Pipelined-Vedic-Multiplier-Verilog)

## License:
This project is open-source and available under the MIT License. Feel free to contribute!

---

# Keywords
`Verilog`, `FPGA`, `VedicMultiplier`, `SQRTCSLA`, `CommonBooleanLogic`, `Pipelining`, `DigitalDesign`, `RTL`, `Vivado`, `HardwareDesign`, `VLSI`

```

This README will now provide an organized, clear, and formal description of your project with the file structure included. Let me know if any further tweaks are needed!
