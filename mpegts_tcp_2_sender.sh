#! /bin/bash

echo "dest port: $1"
ffmpeg -re -f v4l2 -i /dev/video0 -pix_fmt yuv420p -preset ultrafast -tune zerolatency -fflags nobuffer -b:v 600k -f mpegts tcp://localhost:$1
