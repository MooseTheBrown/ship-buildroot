#!/bin/sh

/usr/bin/rpicam-vid -t 0 -n --inline -o - | /usr/bin/gst-launch-1.0 fdsrc fd=0 ! h264parse ! rtspclientsink protocols=tcp location=rtsp://moosethebrown.ru:8554/cam
