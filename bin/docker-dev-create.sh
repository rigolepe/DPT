#!/bin/bash

jupyter_port=8887 # change this port when it is already in use on the host
WORK=$(pwd | sed 's/bin.*//g')  # make sure we don't include the '/bin' part in our work dir in case we run this script from within the bin dir

image_name="dpt-dev"
container_name="dpt-dev-container"

docker rm "$container_name" > /dev/null 2>&1

docker create --gpus all -it --name "$container_name" -v "$WORK":/work -p $jupyter_port:8888 "$image_name" 