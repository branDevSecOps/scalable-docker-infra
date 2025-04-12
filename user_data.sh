#!/bin/bash
# Update & install Docker
apt-get update -y
apt-get install -y docker.io

# Enable Docker at boot
systemctl enable docker
systemctl start docker

# Run your Docker container
# Replace `your-image-name` with the name of your Docker Hub image or local image reference
docker run -d -p 80:80 nginx:latest
