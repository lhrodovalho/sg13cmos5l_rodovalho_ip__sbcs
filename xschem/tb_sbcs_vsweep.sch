v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -360 120 -360 { lab=avdd}
N 80 -340 120 -340 { lab=avss}
N 80 -280 120 -280 { lab=en}
N 80 -260 120 -260 { lab=enb}
N 80 -120 80 -100 { lab=avss}
N 80 -200 80 -180 { lab=GND}
N 240 -120 240 -100 { lab=avss}
N 80 -100 240 -100 { lab=avss}
N 80 -200 160 -200 { lab=GND}
N 240 -200 320 -200 { lab=avdd}
N 160 -200 160 -180 { lab=GND}
N 240 -200 240 -180 { lab=avdd}
N 440 -200 520 -200 { lab=en}
N 440 -200 440 -180 { lab=en}
N 600 -120 600 -100 { lab=avss}
N 600 -200 680 -200 { lab=enb}
N 600 -100 680 -100 { lab=avss}
N 600 -200 600 -180 { lab=enb}
N 440 -120 440 -100 { lab=avss}
N 440 -100 600 -100 { lab=avss}
N 300 -380 300 -360 { lab=avss}
N 300 -480 300 -440 { lab=o}
N 300 -360 340 -360 { lab=avss}
N 80 -320 120 -320 { lab=avss}
N 240 -460 240 -360 {
lab=avss}
N 240 -360 300 -360 {
lab=avss}
N 240 -100 320 -100 {
lab=avss}
N 200 -460 240 -460 {
lab=avss}
N 200 -480 300 -480 {
lab=o}
N 300 -480 340 -480 {
lab=o}
C {devices/title.sym} 160 -40 0 0 {name=l6 author="Luis Henrique Rodovalho"}
C {sbcs.sym} 120 -240 0 0 {name=Xdut}
C {devices/lab_pin.sym} 80 -360 0 0 {name=lavdd1 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 80 -340 0 0 {name=lavss1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 80 -280 0 0 {name=len1 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 80 -260 0 0 {name=lenb1 sig_type=std_logic lab=enb}
C {devices/vsource.sym} 80 -150 0 0 {name=v_avss value=xavss}
C {devices/vsource.sym} 240 -150 0 0 {name=v_avdd value="dc \{xavdd\}"}
C {devices/lab_pin.sym} 320 -200 0 1 {name=lavdd0 sig_type=std_logic lab=avdd}
C {devices/gnd.sym} 160 -180 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 440 -150 0 0 {name=v_en value=\{xen*xavdd\}}
C {devices/lab_pin.sym} 520 -200 0 1 {name=len0 sig_type=std_logic lab=en}
C {devices/vsource.sym} 600 -150 0 0 {name=v_enb value=\{(1-xen)*xavdd\}}
C {devices/lab_pin.sym} 680 -200 0 1 {name=len2 sig_type=std_logic lab=enb}
C {devices/lab_pin.sym} 680 -100 0 1 {name=lavss2 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 300 -410 0 0 {name=v_o value="dc \{xvo\}"}
C {devices/lab_pin.sym} 340 -360 0 1 {name=lcm3 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 340 -480 0 1 {name=lout_ sig_type=std_logic lab=o}
C {devices/lab_pin.sym} 320 -100 0 1 {name=lavss4 sig_type=std_logic lab=avss}
C {devices/code_shown.sym} 30 -650 0 0 {name=header only_toplevel=false value="
.lib $PDK_ROOT/$PDK/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
"
}
C {devices/code_shown.sym} 720 -520 0 0 {name=control only_toplevel=false value="
.option cshunt = 1e-15
.option gmin   = 1e-10
.control
  pre_osdi .lib $PDK_ROOT/$PDK/libs.tech/ngspice/models/osdi/psp103_nqs.osdi
  
  dc v_avdd 3.3 0 -10m
  let io = i(v_o)
  plot io
.endc
"}
C {devices/code_shown.sym} 440 -520 0 0 {name=params only_toplevel=false value="
.param xavdd = 3.3
.param xavss = 0
.param xvo   = 0
.param xen   =  1
"}
C {devices/lab_pin.sym} 80 -320 0 0 {name=lavss3 sig_type=std_logic lab=avss}
