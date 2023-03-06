#! /bin/bash

#Remove deprecated docker files
sudo apt-get remove docker docker-engine docker.io containerd runc

#Install docker
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
#Add gpg key or something
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

#Update
apt-get update

#Installing relevant docker stuff
apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#Test
sudo docker run hello-world

echo Docker and supporting applications (hopefully) successfully installed
