#!/bin/bash

sudo yum update
sudo yum install -y docker git

# docker
sudo usermod -aG docker ec2-user
sudo systemctl enable docker
sudo systemctl start docker

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# source
cd /home/ec2-user
git clone https://github.com/hyun6ik/Jenkins-Study.git
chown -R ec2-user:ec2-user Jenkins-Study
cd /home/ec2-user/Jenkins-Study/ec2-instance/jenkins/docker
make run