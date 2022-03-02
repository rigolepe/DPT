#!/usr/bin/env bash

# Run this script from within the docker folder containing the Dockerfile 

image_name="dpt-base"

docker rmi -f "$image_name"

docker build -t "$image_name" .
