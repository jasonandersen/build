# Jenkins build server
# Jason Andersen
# 2016.07.16

FROM jenkins

USER root

#Install Maven
RUN apt-get update && apt-get install -y --force-yes maven 

# Setup directory for code repositories
RUN mkdir /opt/code && \
    chown -RH jenkins:jenkins /opt/code

# Setup Jenkins plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt 
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

USER jenkins
