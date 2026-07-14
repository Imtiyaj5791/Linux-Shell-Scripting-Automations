#!/bin/bash

# Define an array of system services to monitor
SERVICES=("nginx" "mysql" "cron")

# Iterate through each service and check its operational status
for SERVICE in "${SERVICES[@]}"
do
    if systemctl is-active --quiet "$SERVICE"
    then
        echo "Service $SERVICE is RUNNING"
    else
        echo "Service $SERVICE is NOT RUNNING / STOPPED"
    fi
done
