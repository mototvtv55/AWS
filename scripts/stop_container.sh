#!/bin/bash
set -e

# Stop the running container (if any)
sudo docker stop -p 8080:8080 --name=jenkins-master -d jenkins
