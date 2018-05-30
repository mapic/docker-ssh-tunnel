#!/bin/sh

echo "Starting SSH tunnels..."
sh tunnel-1.sh &
sh tunnel-2.sh &
sh tunnel-3.sh
echo "Done..."
