#!/bin/bash

#Configuration

#Fonctions

get_cpu_usage(){
    total=$(top -bn1 | egrep "Cpu\(s\)" | awk '{print ($8=="id," ? 0 : 100 - $8)}')
    echo "[CPU] Global : $total%"
}

get_cpu_usage