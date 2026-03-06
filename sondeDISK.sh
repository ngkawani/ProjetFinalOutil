#!/bin/bash
DATE =$(date '+%Y-%m-%d-%H:%M:%S')

get_disk_usage(){
    usage=$(df / | awk 'NR==2' {print $5} | sed 's/%//')

    echo "Disque actuellement utilisé : $usage%"
}

while true; do
    get_disk_usage()
end
