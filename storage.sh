#!/bin/bash

# chemins
PROJET="/home/kawani/ProjetFinalOutil"
RRD="/home/kawani/ProjetFinalOutil/system.rrd"

CPU=$(bash $PROJET/sondeCPU.sh)
RAM=$(python3 $PROJET/sondeRAM.py)
MEMORY=$(bash $PROJET/sondeDISK.sh)

rrdtool update $RRD N:$CPU:$RAM:$MEMORY