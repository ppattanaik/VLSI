***************************8Tcell************
.lib '~/project2020/eda/ngspice-32/scn4m_subm.lib' ff
.global gnd
.temp -40
*inverter1
M1000 Q1 Qbar1 vdd vdd p w=0.6u l=0.8u
M1002 Q1 Qbar1 gnd gnd n w=1.6u l=0.4u

*inverter2
M1001 vdd Q2 Qbar2 vdd p w=0.6u l=0.8u
M1003 gnd Q2 Qbar2 gnd n w=1.6u l=0.4u

*access_transistor 
M1004 Q1 wwl vdd gnd n w=0.8u l=0.4u

*********for read operation****
M6 vdd rwl d gnd n w=0.8u l=0.4u
M7 d Qbar1 gnd gnd n w=0.8u l=0.4u
M8 d Qbar1 gnd vdd p w=0.8u l=0.4u 

*access_transistor 
M2004 Q2 wwl vdd gnd n w=0.8u l=0.4u

*********for read operation****
M26 vdd rwl d gnd n w=0.8u l=0.4u
M27 d Qbar2 gnd gnd n w=0.8u l=0.4u
M28 d Qbar2 gnd vdd p w=0.8u l=0.4u

Vqbar1 Qbar1 0 5
vq2 Q2 0 5
v_dd vdd 0 5
vwwl wwl 0 0
vrwl rwl 0 5
.dc Vqbar1 0 5 0.1 vq2 0 5 0.1
.control
run
plot v(Qbar1) vs v(Q1) v(Qbar2) vs v(Q2)

.ENDC
.END
