#!/bin/bash

VIDSOURCE="mmsh://192.168.250.2:8181"
AUDIO_OPTS="-c:a aac -b:a 160000 -ac 2"
VIDEO_OPTS="-s 720x480 -c:v libx264 -b:v 800000"
OUTPUT_HLS="-hls_time 10 -hls_list_size 10 -start_number 1 -hls_flags delete_segments"
ffmpeg -i $VIDSOURCE -y $AUDIO_OPTS $VIDEO_OPTS $OUTPUT_HLS /var/www/html/playlist.m3u8
