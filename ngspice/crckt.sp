C1 in out 1p

R1 out 0 1k

Vin in 0 PULSE(0 5 2n 10p 10p 10n 20n)

.MEASURE TRAN td1090 TRIG v(vout) VAL=0.5 RISE=1 TRAG v(vout) VAL=4.5
RISE=1)
.tran 1p 400n
*.MEASURE TRAN tdfall TRIG v(vin)  VAL='0.5*PAR_VDD' RISE=1 TARG v(vout) VAL='0.5*PAR_VDD'
 RISE=1
.control
run
plot v(in) v(out)
.endc

.end

