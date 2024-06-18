#!/bin/sh

PID=$(pgrep ffmpeg)
DATE=$(date)

if [ $PID ] #есть такой

then

    echo "$DATE ffmpeg find $PID" >> /var/www/html/check.log

else

    echo "$DATE not found ffmpeg, restart" >> /var/www/html/check.log
    /var/www/html/start.sh

fi
