#!/bin/bash

xhost +local:docker

docker run -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    --device /dev/dri \
    --device /dev/snd \
    --device /dev/bus/usb \
    laury/gnuradio:3.7
