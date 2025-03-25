#!/bin/sh

while true; do
    uptime_seconds=$(awk '{print int($1)}' /proc/uptime)
    days=$((uptime_seconds / 86400))
    hours=$(((uptime_seconds % 86400) / 3600))
    minutes=$(((uptime_seconds % 3600) / 60))
    seconds=$((uptime_seconds % 60))
    
    echo "${days}d ${hours}h ${minutes}m ${seconds}s" > /tmp/uptime
    
    sleep 1
done

