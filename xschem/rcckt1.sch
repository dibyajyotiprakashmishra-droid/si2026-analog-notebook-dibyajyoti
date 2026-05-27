v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -10 -220 40 {lab=vin}
N -220 -10 -180 -10 {lab=vin}
N -220 100 -220 130 {lab=GND}
N -220 130 120 130 {lab=GND}
N 120 10 120 130 {lab=GND}
N 120 -10 190 -10 {lab=vout}
N 190 -10 190 70 {lab=vout}
C {rcckt.sym} -30 0 0 0 {name=x1}
C {vsource.sym} -220 70 0 0 {name=V1 value=" 0 PULSE(0 1 0 1p 1p 10n 20n)" savecurrent=false}
C {gnd.sym} 120 130 0 0 {name=l1 lab=GND}
C {opin.sym} 190 70 1 0 {name=p1 lab=vout}
C {simulator_commands_shown.sym} 270 50 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.TRAN 1p 50n
*.MEASURE TRAN td1090 TRIG v(vout) VAL='0.1*PAR_VDD' RISE=1 TRAG v(vout) VAL='0.9*PAR_VDD'
RISE=1)

*.MEASURE TRAN tdfall TRIG v(vin)  VAL='0.5*PAR_VDD' RISE=1 TARG v(vout) VAL='0.5*PAR_VDD'
 RISE=1

.control
run
plot v(vin) v(vout)
.endc

.end
"}
C {lab_wire.sym} -220 -10 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 190 -10 0 0 {name=p3 sig_type=std_logic lab=vout}
