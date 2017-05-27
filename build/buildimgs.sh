#!/bin/bash 
# This shell script will build all the Docker images for the build server. This should be run once prior to running docker-compose.

#mysql image
docker build ./mysql/ -t build-sonardb

#sonarqube image
docker build ./sonarqube/ -t build-sonar

#jenkins image
docker build ./jenkins/base-jenkins/oracle-jdk-8/ -t oracle-jdk8
docker build ./jenkins/base-jenkins/ -t base-jenkins
docker build ./jenkins/ -t build-jenkins
