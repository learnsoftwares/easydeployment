#!/bin/sh

# Update package repositories
apk update

# Install Java and other dependencies
apk add openjdk11 wget git

# Download Jenkins WAR file
wget https://get.jenkins.io/war-stable/latest/jenkins.war

# Set up Jenkins home directory
mkdir -p /var/jenkins_home

# Start Jenkins
java -jar jenkins.war --httpPort=8080 --jenkinsHome=/var/jenkins_home
