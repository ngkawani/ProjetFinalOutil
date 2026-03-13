#!/bin/bash

get_disk_usage(){
    total=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
    echo "$total"
}

get_disk_usage