#!/bin/bash 
# This shell script will build all the Docker images for the build server. This should be run once prior to running docker-compose.

#mysql image
sudo docker build ./mysql/ -t build-sonardb

#sonarqube image
sudo docker build ./sonarqube/ -t build-sonar

#jenkins image
sudo docker build ./jenkins/base-jenkins/oracle-jdk-8/ -t oracle-jdk8
sudo docker build ./jenkins/base-jenkins/ -t base-jenkins
sudo docker build ./jenkins/ -t build-jenkins
