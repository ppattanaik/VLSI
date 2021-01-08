
# Desiging a SRAM based memory in MOSIS 0.5um  CMOS technology

## Table of Contents
-   [SRAM Design](https://github.com/ppattanaik/VLSI/SRAM_Design#sram-design)
-   [Basic Architectural Block Diagram](https://github.com/ppattanaik/VLSI/SRAM_Design#basic-architectural-block-diagram)
-   [Pre Layout](https://github.com/ppattanaik/VLSI/SRAM_Design#pre-layout)
    -   [6T Memory cell](https://github.com/ppattanaik/VLSI/SRAM_Design#6t-memory-cell)
    -   [Sense Amplifier](https://github.com/ppattanaik/VLSI/SRAM_Design#sense-amplifier)
    -   [Write Driver](https://github.com/ppattanaik/VLSI/SRAM_Design#write-driver)
    -   [Tri-State Buffer](https://github.com/ppattanaik/VLSI/SRAM_Design#tri-state-buffer)
    -   [Pre-Charge Circuit](https://github.com/ppattanaik/VLSI/SRAM_Design#pre-charge-circuit)
    -   [Simulation of 6T SRAM Cell](https://github.com/ppattanaik/VLSI/SRAM_Design#simulation-of-6t-sram-cell-with-write-driver-and-sense-amplifier)
-   Pre Layout
-   [Installation](https://github.com/ppattanaik/VLSI/SRAM_Design#installation)
-   [Future Works](https://github.com/ppattanaik/VLSI/SRAM_Design#future-works)
-   [Contact Information](https://github.com/ppattanaik/VLSI/SRAM_Design#contact-information)
	


## SRAM Design
The project is focused on the design of 1k*32-bit 6T SRAM memory using opensource memory compiler  [OpenRAM](https://openram.soe.ucsc.edu/). For the design of custom memory array, memory compiler takes in SPICE netlists, Layout files of the custom cells designed and few other parameters and generates a SRAM memory array.
## Specifications
-   *Memory Size*- **1k * 32-bit**
-   *Operating voltage* - **5V**
-   *Technology PDK file* - **0.5µm CMOS Technology**
-   *Access Time* - **< 30 ns**
-   *Tools Used* - **Sue2 , NGSpice , Magic**
-   *Compiler* - **Open source memory compiler** [OpenRAM](https://github.com/mguthaus/OpenRAM/blob/master/OpenRAM_ICCAD_2016_paper.pdf)
## Basic Architectural Block Diagram
##### [Diagram] 
The SRAM block consists of 8 major blocks:The bit-cell array, Address Decoder, Sense Amplifier, Word-line driver, Bit-cell precharge circuit, Writ Driver, Control logic and column MUX. In this project i have designed and characterised the Bit-cell array that all the devices of SRAM-6T cell using NGSpice tool with 0.5um SCMOS technology from MOSIS.

## Pre - Layout

To clone the Repository and download the Netlist files for Simulation, Enter the following commands in your terminal.

	$  sudo apt install -y git
	$  git clone https://github.com/ppattanaik/VLSI/SRAM_Design 
	$  cd SRAM_design/Netlist/pre_layout


## 6T Memory Cell

#### [](https://github.com/ppattanaik/VLSI/SRAM_Design#block-diagram)Block Diagram

[![6T Cell Block](https://github.com/iamkrvikash/OpenSRAM/raw/master/Diagram/BlockDiagram/6TCell.png)](https://github.com/iamkrvikash/OpenSRAM/blob/master/Diagram/BlockDiagram/6TCell.png)

#### [](https://github.com/iamkrvikash/OpenSRAM#circuit-diagram)Circuit Diagram

##### [](https://github.com/iamkrvikash/OpenSRAM#dc-analysis-of-inverter)DC Analysis of Inverter

ngspice tran_dc.sp

## [](https://github.com/iamkrvikash/OpenSRAM#sense-amplifier)Sense Amplifier

#### [](https://github.com/iamkrvikash/OpenSRAM#block-diagram-1)Block Diagram

[![Sense Amp Block](https://github.com/iamkrvikash/OpenSRAM/raw/master/Diagram/BlockDiagram/SenseAmp.png)](https://github.com/iamkrvikash/OpenSRAM/blob/master/Diagram/BlockDiagram/SenseAmp.png)

#### [](https://github.com/iamkrvikash/OpenSRAM#circuit-diagram-1)Circuit Diagram
# [](https://github.com/iamkrvikash/OpenSRAM#write-driver)Write Driver

#### [](https://github.com/iamkrvikash/OpenSRAM#block-diagram-2)Block Diagram

[![6T Cell Block](https://github.com/iamkrvikash/OpenSRAM/raw/master/Diagram/BlockDiagram/WriteDriver.png)](https://github.com/iamkrvikash/OpenSRAM/blob/master/Diagram/BlockDiagram/WriteDriver.png)

#### [](https://github.com/iamkrvikash/OpenSRAM#circuit-diagram-2)Circuit Diagram

## [](https://github.com/iamkrvikash/OpenSRAM#tri-state-buffer)Tri-State Buffer

#### [](https://github.com/iamkrvikash/OpenSRAM#block-diagram-3)Block Diagram

[![Tri-State Block](https://github.com/iamkrvikash/OpenSRAM/raw/master/Diagram/BlockDiagram/TriState.png)](https://github.com/iamkrvikash/OpenSRAM/blob/master/Diagram/BlockDiagram/TriState.png)

#### [](https://github.com/iamkrvikash/OpenSRAM#circuit-diagram-3)Circuit Diagram

# [](https://github.com/iamkrvikash/OpenSRAM#pre-charge-circuit)Pre-Charge Circuit

#### [](https://github.com/iamkrvikash/OpenSRAM#block-diagram-4)Block Diagram

[![Pre-Charge Block](https://github.com/iamkrvikash/OpenSRAM/raw/master/Diagram/BlockDiagram/PreCharge.png)](https://github.com/iamkrvikash/OpenSRAM/blob/master/Diagram/BlockDiagram/PreCharge.png)

#### [](https://github.com/iamkrvikash/OpenSRAM#circuit-diagram-4)Circuit Diagram

## [](https://github.com/iamkrvikash/OpenSRAM#simulation-of-6t-sram-cell-with-write-driver-and-sense-amplifier)Simulation of 6T-SRAM Cell with write driver and sense amplifier

ngspice tb_tran.sp

[![SRAM Simulation](https://github.com/iamkrvikash/OpenSRAM/raw/master/Waveforms/PreLayout/tb_tran.png)](https://github.com/iamkrvikash/OpenSRAM/blob/master/Waveforms/PreLayout/tb_tran.png)

## [](https://github.com/iamkrvikash/OpenSRAM#installation)Installation

-   To download EDA tools (NgSpice, Magic, Netgen) on your System. Follow  [Github Page](https://github.com/silicon-vlsi/project2020#Cloning-the-Repository)  and Clone the Repo.
-   `git clone https://github.com/silicon-vlsi/project2020`

## [](https://github.com/iamkrvikash/OpenSRAM#future-works)Future Works

-   To create the layout using Magic.
-   To do Post Layout Simulations.
-   Implementing the above designs in OpenRAM Compiler and Compiling the SRAM.

## [](https://github.com/iamkrvikash/OpenSRAM#contact-information)Contact Information

-   Punyadeepa Pattanaik, Undergraduate Student, SIT BBSR  [jagan.punya21deep@gmail.com](mailto:jagan.punya21deep@gmail.com)
