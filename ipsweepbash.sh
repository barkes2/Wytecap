#!/bin/bash
#01/27/2021
#wytecap
#IPsweepBashscript
for ip in `seq 1 254` ; do
	ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	done
#END
