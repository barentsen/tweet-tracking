#!/bin/bash

# Configuration
TRACK="蜘蛛,araña,spider,عنكبوت,मकड़ी,labah-labah,aranha,паук,クモ,spinne,araignée,ragno"
LOGIN=`cat login`

# Tracking
for i in `seq 1 10000`;
do
        curl --silent --user $LOGIN --data "count=0&stall_warnings=true&track=$TRACK" https://stream.twitter.com/1/statuses/filter.json | rotatelogs -f data/%Y%m%d 86400
	echo "Interrupt i="$i
        sleep 60
done
