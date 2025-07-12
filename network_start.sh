#!/bin/bash

# Paths
CONFIG_FILE="./mosquitto/mosquitto.conf"

echo "Buzz Buzz Starting Mosquitto broker with config: $CONFIG_FILE"
mosquitto -c "$CONFIG_FILE" > mosquitto.log 2>&1 &

BROKER_PID=$!
echo "Mosquitto broker started with PID: $BROKER_PID"