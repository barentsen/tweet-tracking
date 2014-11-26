#!/bin/bash
for i in `seq 1 10000`;
do
    python track-meteors.py | rotatelogs -f data/%Y%m%d 86400
    echo "Interrupt i="$i
    sleep 60
done

