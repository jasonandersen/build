#!/bin/bash
# 
# host-setup.sh
# This script will setup a host to act as a Dockerized build environment.

# Install Docker


# Install Docker Compose


# Install git


# Install vim


# Create directory to house code repository
mkdir -p /apps/repo

# Clone into git infrastructure repository


# Create directories for all the build applications to house data on the host system.
mkdir -p /apps/build/jenkins
mkdir -p /apps/build/sonarqube/conf
mkdir -p /apps/build/sonarqube/data
mkdir -p /apps/build/sonarqube/extensions
mkdir -p /apps/build/sonarqube/plugins
mkdir -p /apps/build/mysql/data
mkdir -p /apps/build/nexus

# Nexus requires UID 200 to own the Nexus working directory
chown 200 /apps/build/nexus

# Run script to build Docker containers 
./buildimgs.sh

# Run Docker Compose to stand up environment
docker-compose up -d

