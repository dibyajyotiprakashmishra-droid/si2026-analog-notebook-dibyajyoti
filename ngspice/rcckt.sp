

R1 in out 1k

C1 out 0 1p

Vin in 0 PULSE(0 1 0 1p 1p 10n 20n)
.tran 1p 20n
.MEASURE TRAN td1090 TRIG v(vout) VAL=0.5 RISE=1 TRAG v(vout) VAL=4.5
RISE=1)

*.MEASURE TRAN tdfall TRIG v(vin)  VAL='0.5*PAR_VDD' RISE=1 TARG v(vout) VAL='0.5*PAR_VDD'
 RISE=1
.control
run
plot v(in) v(out)
.endc

.end
