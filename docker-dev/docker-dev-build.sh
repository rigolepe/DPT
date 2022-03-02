#!/usr/bin/env bash

# Run this script from within the docker folder containing the Dockerfile 

image_name="dpt-dev"

docker rmi -f "$image_name"

cp ../requirements.txt . 
docker build -t "$image_name" .
