v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -520 -140 -520 -110 {lab=vin}
N -520 -140 -450 -140 {lab=vin}
N -390 -140 -330 -140 {lab=vin1}
N -270 -140 -210 -140 {lab=vin2}
N -120 -140 -90 -140 {lab=viom}
N -520 -50 -520 -20 {lab=GND}
N -520 -380 -520 -330 {lab=Vbat}
N -520 -380 -430 -380 {lab=Vbat}
N -430 -380 -430 -370 {lab=Vbat}
N -430 -220 -430 -210 {lab=GND}
N -520 -270 -520 -220 {lab=GND}
N -520 -220 -430 -220 {lab=GND}
N -430 -230 -430 -220 {lab=GND}
N -430 -220 -380 -220 {lab=GND}
N -380 -230 -380 -220 {lab=GND}
N -430 -300 -430 -290 {lab=vref}
N -380 -300 -380 -290 {lab=vref}
N -430 -300 -380 -300 {lab=vref}
N -430 -310 -430 -300 {lab=vref}
N -50 -130 -50 -80 {lab=GND}
N -120 -260 -120 -140 {lab=viom}
N -160 -140 -120 -140 {lab=viom}
N -120 -320 -90 -320 {lab=viom}
N -120 -260 -90 -260 {lab=viom}
N -120 -320 -120 -260 {lab=viom}
N -30 -320 0 -320 {lab=vout}
N 0 -260 0 -210 {lab=vout}
N -50 -210 0 -210 {lab=vout}
N -50 -210 -50 -190 {lab=vout}
N -30 -260 0 -260 {lab=vout}
N 0 -320 0 -260 {lab=vout}
N 0 -210 80 -210 {lab=vout}
N 80 -210 80 -190 {lab=vout}
N 80 -130 80 -80 {lab=GND}
N -380 -300 -340 -300 {lab=vref}
N -340 -300 -340 -180 {lab=vref}
N -340 -180 -90 -180 {lab=vref}
C {vsource.sym} -520 -80 0 0 {name=Vmic value="0.6 AC=1" savecurrent=false}
C {res.sym} -420 -140 1 0 {name=Rmic
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -300 -140 1 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -180 -140 1 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} -50 -160 0 0 {name=E1 value=10e5}
C {vsource.sym} -520 -300 0 0 {name=V2 value=2.5 savecurrent=false}
C {res.sym} -60 -260 1 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -60 -320 1 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -430 -340 2 0 {name=R4
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -430 -260 2 0 {name=R5
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} -380 -260 0 0 {name=C3
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -520 -20 0 0 {name=l1 lab=GND}
C {gnd.sym} -50 -80 0 0 {name=l2 lab=GND}
C {gnd.sym} -430 -210 0 0 {name=l3 lab=GND}
C {capa.sym} 80 -160 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 80 -80 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -480 -140 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -350 -140 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} -230 -140 0 0 {name=p3 sig_type=std_logic lab=vin2}
C {lab_wire.sym} -130 -180 0 0 {name=p4 sig_type=std_logic lab=vref}
C {lab_wire.sym} -480 -380 0 0 {name=p5 sig_type=std_logic lab=Vbat}
C {lab_wire.sym} 50 -210 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} -100 -140 0 0 {name=p7 sig_type=std_logic lab=viom}
C {devices/code_shown.sym} 110 -480 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all
op 
ac dec 100 1 100meg 
let voutdb = vdb(vout)
let voutabs = abs(vout)

meas ac vout_1k find voutabs at=1k
meas ac voutdb_1k find voutdb at=1k

let voutm3db = voutdb_1k - 3.0
meas ac fp3db WHEN voutdb=voutm3db fall=last
meas ac fz3db WHEN voutdb=voutm3db rise=1

write

.endc
"}
