#!/bin/bash

sudo yum update
sudo yum install docker git java-11-amazon-corretto.x86_64 -y


sudo usermod -aG docker ec2-user

sudo systemctl enable docker
sudo systemctl start docker