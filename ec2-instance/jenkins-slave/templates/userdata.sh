#!/bin/bash

sudo yum update
sudo yum install docker git java-1.8.0-openjdk java-1.8.0-openjdk-devel.x86_64 -y

sudo usermod -aG docker ec2-user

sudo systemctl enable docker
sudo systemctl start docker