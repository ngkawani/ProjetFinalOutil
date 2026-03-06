#!/bin/bash

#Configuration
DATE =$(date '+%Y-%m-%d-%H:%M:%S')

#Fonctions

get_cpu_usage(){
    LocaL usage
    usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

    if [[ -z "$usage" || "$usage" == *"e+"*]]; then
        echo "0"
    else
        echo "${usage%.*}"
    fi
}

while true; do
    get_cpu_usage()
end
