#!/bin/bash

rrd="/home/kawani/ProjetFinalOutil/system.rrd"
export_file="/home/kawani/ProjetFinalOutil/exportfile.json"

/usr/bin/rrdtool xport --json --start -60m --step 60 \
    DEF:c=$rrd:cpu:AVERAGE \
    DEF:r=$rrd:ram:AVERAGE \
    DEF:d=$rrd:memory:AVERAGE \
    XPORT:c:"CPU" XPORT:r:"RAM" XPORT:d:"MEMORY" > $export_file
