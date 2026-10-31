v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 320 -250 340 -250 {
lab=en}
N 420 -450 440 -450 {
lab=iop}
N 420 -430 440 -430 {
lab=ion}
N 320 -330 340 -330 {
lab=avdd}
N 320 -310 340 -310 {
lab=avss}
N 320 -290 340 -290 {
lab=vsub}
N 320 -230 340 -230 {
lab=enb}
N 320 -190 340 -190 {
lab=bp0}
N 320 -170 340 -170 {
lab=bp}
N 320 -150 340 -150 {
lab=bn}
N 520 -240 540 -240 {
lab=bp0}
N 540 -240 540 -230 {
lab=bp0}
N 540 -170 540 -160 {
lab=bn}
N 520 -160 540 -160 {
lab=bn}
C {devices/title.sym} 160 -40 0 0 {name=l6 author="Luis Henrique Rodovalho"}
C {devices/iopin.sym} 320 -330 2 0 {name=pavdd lab=avdd}
C {devices/iopin.sym} 320 -310 2 0 {name=pavss lab=avss}
C {devices/iopin.sym} 440 -450 2 1 {name=pip lab=iop}
C {devices/iopin.sym} 440 -430 2 1 {name=pim lab=ion}
C {devices/iopin.sym} 320 -290 2 0 {name=pvsub lab=vsub}
C {devices/ipin.sym} 320 -250 2 1 {name=pen lab=en}
C {devices/ipin.sym} 320 -230 2 1 {name=penb lab=enb}
C {sbcs_slice.sym} 340 -130 0 0 {name=Xslice[1:0]}
C {devices/lab_pin.sym} 320 -190 0 0 {name=p1 sig_type=std_logic lab=bp0}
C {devices/lab_pin.sym} 320 -170 0 0 {name=p2 sig_type=std_logic lab=bp}
C {devices/lab_pin.sym} 320 -150 0 0 {name=p3 sig_type=std_logic lab=bn}
C {devices/capa-2.sym} 540 -200 0 0 {name=cc
value=1.0p
m=1}
C {devices/lab_pin.sym} 520 -240 0 0 {name=p4 sig_type=std_logic lab=bp0}
C {devices/lab_pin.sym} 520 -160 0 0 {name=p5 sig_type=std_logic lab=bn}
