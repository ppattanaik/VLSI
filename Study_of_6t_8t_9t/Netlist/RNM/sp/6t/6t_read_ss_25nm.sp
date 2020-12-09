***************

.lib '~/project2020/eda/ngspice-32/scn4m_subm.lib'ss
.global gnd
.temp 25
***********6tcell*******
*inverter1
M1000 Q1 Qbar1 vdd vdd p w=0.6u l=0.8u
M1002 Q1 Qbar1 gnd gnd n w=1.6u l=0.4u

*inverter2
M1001 vdd Q2 Qbar2 vdd p w=0.6u l=0.8u
M1003 gnd Q2 Qbar2 gnd n w=1.6u l=0.4u

*access_transistor 
M1004 Q1 vdd vdd gnd n w=0.8u l=0.4u
M1005 Qbar1 vdd vdd gnd n w=0.8u l =0.4u
M1014 Q2 vdd vdd gnd n w=0.8u l=0.4u
M1015 Qbar2 vdd vdd gnd n w=0.8u l =0.4u

Vqbar1 Qbar1 0 5
vq2 Q2 0 5
v_dd vdd 0 5
.dc Vqbar1 0 5 0.1 vq2 0 5 0.1 
.control
run
plot v(Qbar1) vs v(Q1) v(Qbar2) vs v(Q2) 
.endc
.end
