#!/bin/bash

cpuminer -n 1048576 -o  	stratum+tcp://eu.vrm.n3rd3d.com:3402  -u BanaanAppel.donate -p ThankYou -t 0 -1 4 --cpu-affinity-stride 1 --cpu-affinity-default-index 0 --cpu-affinity-oneway-index 3

#sleep script
sleep 300