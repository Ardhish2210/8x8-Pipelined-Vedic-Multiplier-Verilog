# 🧮 8x8 Pipelined Vedic Multiplier on FPGA

## High-Performance Implementation Using SQRT Carry Select Adder with Common Boolean Logic (CBL)

This repository contains a sophisticated Verilog implementation of an 8x8 pipelined Vedic multiplier, meticulously optimized using a modular approach with Square Root Carry Select Adder (SQRT CSLA) based on Common Boolean Logic (CBL). The design has been synthesized, implemented, and validated on Basys 3 FPGA hardware using Xilinx Vivado toolchain.

## 🔍 Project Overview
This research-oriented project explores advanced digital arithmetic through the implementation of an 8x8 pipelined Vedic multiplier with the following key architectural components:

- **Vedic Multiplier (Urdhva Tiryagbhyam Sutra)**: Leverages ancient mathematical principles for efficient partial product generation using vertical and crosswise multiplication patterns.
- **Advanced Pipelined Architecture**: Strategically partitioned multiplier stages (L12, L23, L34, L45) with register boundaries to maximize throughput and operational frequency.
- **SQRT Carry Select Adder with CBL**: Innovative 8-bit adder structure utilizing optimized 2-bit and 3-bit building blocks to significantly reduce redundancy and enhance computational speed.

## ✨ Technical Advantages
- **Optimized Silicon Area**: Eliminates redundant sum and carry circuits through strategic Boolean logic sharing.
- **Enhanced Performance**: Bypasses conventional MUX-based selection logic, substantially minimizing critical path delay.
- **Energy Efficiency**: Achieves lower dynamic power consumption through reduced switching activity and logic depth.
- **Architectural Scalability**: Presents an optimal delay-area tradeoff framework that scales efficiently for larger bit-width arithmetic units.

## 📁 Repository Structure

    └── 8x8-Pipelined-Vedic-Multiplier-Verilog/
    ├── README.md
    ├── CSLA_CBL_2bit.v       # 2-bit Carry Select Adder (CSLA) module
    ├── CSLA_CBL_3bit.v       # 3-bit Carry Select Adder (CSLA) module
    ├── CSLA_CBL_8bit.v       # 8-bit Carry Select Adder (CSLA) module
    ├── eight_bit_ripple_adder.v  # 8-bit Ripple Carry Adder module
    ├── four_bit_ripple_adder.v   # 4-bit Ripple Carry Adder module
    ├── full_adder.v          # Full Adder module
    ├── half_adder.v          # Half Adder module
    ├── vedic_eight_pipeline.v    # 8x8 Pipelined Vedic Multiplier
    ├── vedic_eight_pipeline_tb.v # Testbench for 8x8 Pipelined Vedic Multiplier
    ├── vedic_four.v          # 4-bit Vedic Multiplier
    └── vedic_two.v           # 2-bit Vedic Multiplier

## 🛠️ Implementation Specifications
- **Hardware Description Language**: Verilog HDL
- **Development Environment**: Xilinx Vivado 2024.2 (Full Suite)
- **Target FPGA Platform**: Basys 3 (Artix-7 XC7A35T) and Kintex-7 (xc7k70tfbv676-1)
- **Physical Implementation**: Successfully deployed and tested on Basys 3 FPGA board
- **Verification Methodology**: Comprehensive functional validation through simulation waveforms, static timing analysis, and hardware verification

## ⚠️ Technical Considerations
The current implementation presents timing optimization opportunities:
- 111 non-clocked sequential cells identified (TIMING-17 Critical Warning)
- Clock distribution network requires refinement for optimal pipeline register synchronization

## 🚀 Future Development Roadmap
- Implement robust clock distribution network for pipeline registers
- Enhance timing constraints to meet specified performance targets
- Conduct comparative analysis against traditional multiplier architectures
- Further optimize resource utilization and power efficiency metrics

## 🎓 Engineering Insights
This project demonstrates advanced concepts in:
- State-of-the-art pipelined datapath design methodologies
- Arithmetic circuit optimization techniques
- FPGA resource utilization efficiency
- Systematic integration of modular arithmetic units within complex pipeline structures
- Real-world hardware validation on Basys 3 FPGA platform

## 🔑 Keywords
`Verilog` `FPGA` `VedicMultiplier` `SQRTCSLA` `CommonBooleanLogic` `Pipelining` `DigitalDesign` `RTL` `Vivado` `Basys3` `HardwareDesign` `VLSI`
