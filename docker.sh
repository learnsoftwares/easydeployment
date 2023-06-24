#!/bin/sh

# Update package repositories
apk update

# Install dependencies
apk add curl tar gzip

# Download Docker binary
curl -fsSL https://get.docker.com -o get-docker.sh

# Install Docker
sh get-docker.sh

# Add current user to docker group
sudo usermod -aG docker $(whoami)

# Start Docker service
sudo service docker start

