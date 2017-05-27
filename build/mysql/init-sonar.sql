# This script initializes the sonarqube database and credentials if they don't exist in the database already.
# 
# Jason Andersen
# 2016.07.31

CREATE DATABASE IF NOT EXISTS sonar;

CREATE USER IF NOT EXISTS 'sonar'@'%' IDENTIFIED BY 'sonar';

GRANT ALL ON sonar.* TO 'sonar'@'%';
