
# Desiging a SRAM based memory in MOSIS 0.5um  CMOS technology
## Table of Contents
* SRAM Design
* Basic Architectural Block Diagram
* Pre-Layout
	* 6T Memory Cell
	* Sense Amplifier
	* Write Driver
	* Tri - State Buffer
	* Pre-charge Circuit
	* Simulation of 6T SRAM Cell
* Post-Layout
* Installation
* Future Works
* Contact Information
	


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
	$  git clone https://github.com/ppattanaik/SRAM_design 
	$  cd SRAM_design/Netlist/pre_layout

## 6T Memory Cell

[Block Diagram]
[Circuit Diagram]


## Sense Amplifier

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/BlockDiagram/SenseAmp.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/BlockDiagram/SenseAmp.png)

**Circuit Diagram**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/CircuitDiagram/SenseAmplifier.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/CircuitDiagram/SenseAmplifier.png)

**Simulation-1**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/PreLayoutWaveforms/SenseAmpCell/SenseAmpPreLayout1.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/PreLayoutWaveforms/SenseAmpCell/SenseAmpPreLayout1.png)

**For Pre Layout Simulation please**  [click here](https://github.com/ReuelReuben/vsdSRAM#sense-amplifier-2)

**Simulation-2**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/PreLayoutWaveforms/SenseAmpCell/SenseAmpPreLayout2.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/PreLayoutWaveforms/SenseAmpCell/SenseAmpPreLayout2.png)

## [](https://github.com/ReuelReuben/vsdSRAM#write-driver)Write Driver

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/BlockDiagram/WriteDriver.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/BlockDiagram/WriteDriver.png)

**Circuit Diagram**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/CircuitDiagram/WriteDriver.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/CircuitDiagram/WriteDriver.png)

**Simulation**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/PreLayoutWaveforms/WriteDriverCell/WriteDrivePreLayout.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/PreLayoutWaveforms/WriteDriverCell/WriteDrivePreLayout.png)

**For Pre Layout Simulation please**  [click here](https://github.com/ReuelReuben/vsdSRAM#write-driver-2)

## [](https://github.com/ReuelReuben/vsdSRAM#tri-state-buffer)Tri-State Buffer

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/BlockDiagram/Screenshot%20(102).png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/BlockDiagram/Screenshot%20(102).png)

**Circuit Diagram**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/CircuitDiagram/Trigate.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/CircuitDiagram/Trigate.png)

**Simulation-1**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/PreLayoutWaveforms/TrigateCell/TrigateBufPreLayout1.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/PreLayoutWaveforms/TrigateCell/TrigateBufPreLayout1.png)

**For Pre Layout Simulation please**  [click here](https://github.com/ReuelReuben/vsdSRAM#tri-state-buffer-2)

**Simulation-2**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/PreLayoutWaveforms/TrigateCell/TrigateBufPreLayout2.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/PreLayoutWaveforms/TrigateCell/TrigateBufPreLayout2.png)

## [](https://github.com/ReuelReuben/vsdSRAM#pre-charge-circuit)Pre-Charge Circuit

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/BlockDiagram/PreCharge.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/BlockDiagram/PreCharge.png)

**Circuit Diagram**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/CircuitDiagram/PreCharge.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/CircuitDiagram/PreCharge.png)

**Simulation**

[![](https://github.com/ReuelReuben/vsdSRAM/raw/master/PreLayoutWaveforms/PreChargeCell/PrechargePreLayout.png)](https://github.com/ReuelReuben/vsdSRAM/blob/master/PreLayoutWaveforms/PreChargeCell/PrechargePreLayout.png)

**For Pre Layout Simulation please**  [click here](https://github.com/ReuelReuben/vsdSRAM#pre-charge-circuit-2)
