v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -20 30 -20 {lab=Vout}
N 30 -20 30 10 {lab=Vout}
N 30 -20 60 -20 {lab=Vout}
N -110 -20 -60 -20 {lab=Vin}
N 30 70 30 90 {lab=ref}
C {res.sym} -30 -20 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 30 40 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {opin.sym} 60 -20 0 0 {name=p1 lab=Vout
}
C {ipin.sym} -110 -20 0 0 {name=p2 lab=Vin}
C {iopin.sym} 30 90 1 0 {name=p3 lab=ref
}
