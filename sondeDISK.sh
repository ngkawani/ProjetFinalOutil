#!/bin/bash

get_disk_usage(){
    total=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
    echo "[DISQUE] Utilisation Globale: $total"
}

get_disk_usage