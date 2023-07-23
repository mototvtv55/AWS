#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull awsdockertest1989/jenkins

# Run the Docker image as a container
docker run -p 8080:8080 --name=jenkins -d awsdockertest1989/jenkins


