#!/bin/sh

VIDEO_DIR="/video"
if [ ! -d "$VIDEO_DIR" ]; then
    mkdir -p "$VIDEO_DIR"
    echo "Created video directory $VIDEO_DIR"
fi

FILENAME="$VIDEO_DIR/record_$(date +%Y%m%d_%H%M%S)"

/usr/bin/rpicam-vid -t 0 -n --inline -o - | /usr/bin/gst-launch-1.0 fdsrc fd=0 ! tee name=t ! queue ! h264parse ! rtspclientsink protocols=tcp location=rtsp://moosethebrown.ru:8554/cam t. ! queue ! h264parse ! avimux ! filesink location="$FILENAME.avi"
