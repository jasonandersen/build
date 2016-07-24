# Jenkins build server
# Jason Andersen
# 2016.07.16

FROM jenkins

#Install Maven and JDK8
USER root
RUN apt-get update && apt-get install -y --force-yes \
    maven \
    openjdk-8-jdk

# Setup directory for code repositories
RUN mkdir /opt/code && \
    chown -RH jenkins:jenkins /opt/code

