#!/bin/bash

# Number of instances you want to run
NUM_INSTANCES=5

# Loop and start each instance in the background
for (( i=1; i<=NUM_INSTANCES; i++ ))
do
   ./nflow-generator -t localhost -p 5106 -c 128 &
   echo "Started instance $i"
done

echo "All instances started in the background."
