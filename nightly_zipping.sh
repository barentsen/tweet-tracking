#!/bin/bash
# Script to compress the data files produced by the tweet-tracking scripts
# you could run this as a daily crontab
for PROJECT in meteors exoplanets spiders; do
    for FILE in `find $PROJECT/data -mtime +1 ! -name "*.gz"`;
    do
	echo Compressing $FILE
	gzip $FILE
    done
done

