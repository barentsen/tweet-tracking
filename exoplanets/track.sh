#!/bin/bash

# Configuration
NAME="exoplanets"
TRACK="exoplanet,exoplanets"
LOGIN=`cat login`

# Tracking
for i in `seq 1 1000`;
do
        curl -silent --user $LOGIN --data "count=0&stall_warnings=true&track=$TRACK" https://stream.twitter.com/1/statuses/filter.json | /usr/sbin/rotatelogs data/%Y%m%d 86400
        mail geert@barentsen.be -s "TweetTracker warning: $NAME was interrupted, i="$i < $0
        sleep 60
done
