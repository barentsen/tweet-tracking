#!/bin/bash
for i in `seq 1 100`;
do
        python track-exoplanets.py | rotatelogs -f data/%Y%m%d 86400
	echo "Interrupt i="$i
        sleep 60
done

