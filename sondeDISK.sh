#!/bin/bash

get_disk_usage(){
    usage=$(df / | awk 'NR==2' {print $5} | sed 's/%//')

    echo "Disque actuellement utilisé : $usage%"
}

get_disk_usage