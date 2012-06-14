#!/bin/bash
# Script to compress older data files; run this as a crontab

for PROJECT in meteors exoplanets spiders; do
    for FILE in `find $PROJECT/data -mtime +2 ! -name "*.gz"`;
    do
	echo Compressing $FILE
	gzip $FILE
    done
done
