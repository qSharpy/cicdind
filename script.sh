#!/usr/bin/env bash

# Script to create a container on the host from within another container
echo "Deploying Application"
container_port=8080
registry="docker.io"
repository="nginx"
image="${registry}/${repository}:latest"
docker run -dp "${container_port}:${container_port}" "${image}"
