#!/bin/bash
# 
# host-setup.sh
# This script will setup an Ubuntu host to act as a Dockerized build environment.

BASE_DIR="/apps/build"
JENKINS_DIR=$BASE_DIR/jenkins
SONARQUBE_DIR=$BASE_DIR/sonarqube
MYSQL_DIR=$BASE_DIR/mysql
NEXUS_DIR=$BASE_DIR/nexus
REPO_DIR=$BASE_DIR/repo

# Install Docker
sudo apt-get update
sudo apt-get remove docker docker-engine
sudo apt-get install \
        linux-image-extra-$(uname -r) \
        linux-image-extra-virtual
sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce

# Test that Docker installed correctly
sudo docker run hello-world

# Install Docker Compose
sudo apt-get install docker-compose

# Install git
sudo apt-get install git

# Install vim
sudo apt-get install vim

# Create directory to house code repository
mkdir -p $REPO_DIR

# Clone into git infrastructure repository
cd $REPO_DIR
git clone https://github.com/jasonandersen/infrastructure.git
cd $REPO_DIR/infrastructure/build

# Create directories for all the build applications to house data on the host system.
mkdir -pv $JENKINS_DIR
mkdir -pv $SONARQUBE_DIR/conf
mkdir -pv $SONARQUBE_DIR/data
mkdir -pv $SONARQUBE_DIR/extensions
mkdir -pv $SONARQUBE_DIR/plugins
mkdir -pv $MYSQL_DIR/data
mkdir -pv $NEXUS_DIR

# Nexus requires UID 200 to own the Nexus working directory
sudo chown 200 $NEXUS_DIR

# Create .env file specifically for this host


# Run script to build Docker containers 
sudo ./buildimgs.sh

# Run Docker Compose to stand up environment
sudo docker-compose up -d

