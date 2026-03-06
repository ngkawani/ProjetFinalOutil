#!/bin/bash

get_disk_usage(){
    date=$(date '+%Y-%m-%d %H:%M:%S')
    total=$(df -h / | awk 'NR==2 {print $5}')
    echo "[$date] [DISQUE] Utilisation Globale: $total"
}

get_disk_usage