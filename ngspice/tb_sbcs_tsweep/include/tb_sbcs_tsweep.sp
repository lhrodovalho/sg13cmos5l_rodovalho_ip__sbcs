* num: #num corner: #corner vdd: #vdd temp: #temp

* Include models
.lib ../../models/cornerMOShv.lib #corner
.lib ../../models/cornerMOSlv.lib #corner
.temp #temp

.include ../../netlists/sbcs.spice


* Simulation parameters
.param xavdd = #vdd
.param xavss = 0
.param xvo   = 0

* Design under test
*.subckt sbcs io vdd vss
xdut io avdd avss en enb sbcs

v_avss GND avss xavss
v_avdd avdd avss dc {xavdd} 
v_io io avss {xvo}

v_en  en  avss {xavdd}      
v_enb enb avss 0 

* Simulation control
.option gmin=1e-12
.option cshunt=1e-15
.option method=Gear

.dc temp -55 150 5

.save i(v_io)
.control
  pre_osdi ../../models/psp103_nqs.osdi

  run
  let io = i(v_io)
  plot io

  wrdata ../data/tb_sbcs_tsweeep.dat#num io

.endc

.GLOBAL GND 
.end 
