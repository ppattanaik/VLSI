***************************9Tcell************

*.SUBCKT 9tcell bl br wl vdd gnd
*spice3 file created from cell_6t
.lib '~/project2020/eda/ngspice-32/scn4m_subm.lib' ss
.global gnd
.temp 25

*inverter1
M1000 Q1 Qbar1 vdd vdd p w=0.6u l=0.8u
M1002 Q1 Qbar1 gnd gnd n w=1.6u l=0.4u

*inverter2
M1001 vdd Q2 Qbar2 vdd p w=0.6u l=0.8u
M1003 gnd Q2 Qbar2 gnd n w=1.6u l=0.4u

*access_transistor 
M1004 Q1 WR vdd gnd n w=0.8u l=0.4u
M1005 Qbar1 WR vdd gnd n w=0.8u l =0.4u

M7 vdd Qbar1 d gnd n w=2u l= 0.4u
M8 vdd Q1 d gnd n w=2u l =0.4u
M9 d RD gnd gnd n w=2u l = 0.4u 

*access_transistor 
M2004 Q2 WR vdd gnd n w=0.8u l=0.4u
M2005 Qbar2 WR vdd gnd n w=0.8u l =0.4u

M27 vdd Qbar2 d gnd n w=2u l= 0.4u
M28 vdd Q2 d gnd n w=2u l=0.4u
M29 d RD gnd gnd n w=2u l=0.4u

Vqbar1 Qbar1 0 5
vq2 Q2 0 5
v_dd vdd 0 5
v_RD RD 0 5
v_wr WR 0 0
vsup vdd 0 5
.dc Vqbar1 0 5 0.1 vq2 0 5 0.1 vsup 0 5 0.1
.control
run
plot v(Qbar1) vs v(Q1) v(Qbar2) vs v(Q2) vsup
.endc
.END
