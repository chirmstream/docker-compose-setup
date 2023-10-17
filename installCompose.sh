#! /bin/bash

# First install docker engine
    # Remove any existing docker installation
    sudo yum remove docker \
        docker-client \
        docker-client-latest \
        docker-common \
        docker-latest \
        docker-latest-logrotate \
        docker-logrotate \
        docker-engine

    # Setup repository
    sudo yum install -y yum-utils
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

    # Install docker engine
    sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    # GPG key should match "060A 61C5 1B55 8A7F 742B 77AA C52F EB6B 621E 9F35"

    # Start docker
    sudo systemctl start docker

    # Verify docker installation
    sudo docker run hello-world

# Install docker compose