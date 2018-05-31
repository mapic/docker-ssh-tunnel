#!/bin/sh

echo "Starting SSH tunnels..."
sh tunnel-1.sh &
sh tunnel-2.sh &
sh tunnel-3.sh
while true; do sleep 10000; done;
echo "Done..."
