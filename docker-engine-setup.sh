#!/bin/bash
# Install docker engine

sudo apt-get update

sudo apt-get install ca-certificates curl gnupg lsb-relase

sudo makdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker --version 

sudo docker run hello-world

sudo groupadd docker 
sudo usermod -aG docker $USER

echo "Done, Logout and login back to start using docker without sudo"
