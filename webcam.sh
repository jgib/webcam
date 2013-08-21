#!/usr/bin/env bash
#uses video1 i.e. secodary webcam
#without a filename arugment supplied to the script the video will stream but will not save the avi
if [ -z $1 ]; then
echo -e "\n\n./webcam.sh /path/to/video filename\n\nAvailable video devices"
ls /dev/video*
exit
fi
if [ -d ~/Videos/Webcam ] && [ -w ~/Videos/Webcam ]; then
ffmpeg -f video4linux2 -r 25 -s 640x480 -i $1 ~/Videos/Webcam/$2.avi
else
mkdir -p ~/Videos/Webcam
ffmpeg -f video4linux2 -r 25 -s 640x480 -i $1 ~/Videos/Webcam/$2.avi
fi
exit 0
