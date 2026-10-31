#! /bin/bash

magic -dnull -noconsole -T ihp-sg13cmos5l.tech << EOF
load slot_10
select top cell
extract path extfiles
extract do unique
extract all
ext2spice lvs
ext2spice -p extfiles -o ../ngspice/netlists/slot_10.lvs.spice
ext2spice cthresh 1f
ext2spice -p extfiles -o ../ngspice/netlists/slot_10.cc.spice
quit -noprompt
EOF
rm -r extfiles
#exit 0
