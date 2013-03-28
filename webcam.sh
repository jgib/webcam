#!/bin/bash
#uses video1 i.e. secodary webcam
#without a filename arugment supplied to the script the video will stream but will not save the avi
if [ -d ~/Videos/Webcam ] && [ -w ~/Videos/Webcam ]; then
ffmpeg -f v4l2 -r 25 -s 640x480 -i /dev/video1 ~/Videos/Webcam/$1.avi
else
mkdir -p ~/Videos/Webcam
ffmpeg -f v4l2 -r 25 -s 640x480 -i /dev/video1 ~/Videos/Webcam/$1.avi
fi
exit 0
