SRAM Design 
*Include LIB FILE
.lib /home/vlsi/project2020/eda/ngspice-32/scn4m_subm.lib nom
*Include subcircuit
xi bl blb wl vdd gnd cell_icon
.include cell_icon.sp
*Include sense_amp subckt
xt bl blb dout en vdd gnd sense_amp
.include sense_amp.sp
*Include Write_driver subckt
xd din bl blb enw vdd gnd write_driver
.include write_driver.sp
*Precharge transistor
m7 bl  pc vdd vdd p w='1.6u' l='0.8u'
m8 blb pc vdd vdd p w='1.6u' l='0.8u'
m9 bl  pc blb vdd p w='1.6u' l='0.8u'
*Routing capacitance
cbl  bl  gnd 1270f
cblb blb gnd 1270f
cwl  wl  gnd 2550f
*BitLine overlap capacitance 
m10 bl  gnd vdd gnd n w='0.8u' l='0.4u' m='127'
m11 blb gnd vdd gnd n w='0.8u' l='0.4u' m='127'
*WordLine parasitic capacitance
m12 vdd wl gnd gnd n w='0.8u' l='0.4u' m='255'
m13 vdd wl vdd gnd n w='0.8u' l='0.4u' m='255'
* Write Circuitry
*m14 bl  w0 gnd gnd n w='1.6u' l='0.4u' 
*m15 blb w1 gnd gnd n w='1.6u' l='0.4u' 
*DC VOltage Sources
vdd vdd 0  5
*Parameters
.global vdd gnd
*Initial Condition
.nodeset v(xi.q)=0
.nodeset v(xi.qbar)=5
*Data control (Bit Line)
vpc pc 0 pulse(0 5 15n 1n 1n 60n 90n)
*Access Control
vwl wl 0 pulse(0 5 20n 1n 1n 23n 90n)
*Sense Amplifier control Signal
ven en 0 pulse(5 0 47n 1n 1n 23n 180n)
*Write Pulse
*vwrite1 w1 0 pulse(0 5 110n 1n 1n 23n 360n)
*vwrite0 w0 0 pulse(0 5 290n 1n 1n 23n 360n)
venw enw 0 pulse(0 5 110n 1n 1n 23n 180n)
vdin din 0 pulse(0 5 110n 1n 1n 23n 360n)

*Sense amplifier initial conditions
*.nodeset v(dout)=0
*Transient Analysis
.tran 5p 500n
.control
run
plot v(enw) v(din)+10 v(xi.q)+20 v(xi.qbar)+20 v(bl)+40 v(blb)+40  v(en)+50 v(wl)+55 v(pc)+60 v(dout)+30
*plot xi.q xi.qbar             $ Node values
*plot v(wl) v(pc)+6           $ wordline & precharge
*plot v(bl) v(blb)            $ Bit Line  data
.endc

.end

