#!/bin/bash

sudo apt update
sudo apt install -y docker.io

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64

sudo usermod -aG docker $USER
newgrp docker

minikube start --driver=docker