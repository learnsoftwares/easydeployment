#!/bin/sh

# Update package repositories
apk update

# Install dependencies
apk add curl tar gzip

# Define Tomcat version
TOMCAT_VERSION=10.1.0

# Download Apache Tomcat
curl -O https://downloads.apache.org/tomcat/tomcat-10/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz

# Extract Apache Tomcat archive
tar -xzvf apache-tomcat-${TOMCAT_VERSION}.tar.gz

# Define the desired Tomcat installation directory
TOMCAT_INSTALL_DIR=/opt/tomcat

# Move Apache Tomcat directory to the installation directory
mv apache-tomcat-${TOMCAT_VERSION} ${TOMCAT_INSTALL_DIR}

# Define the desired Tomcat installation directory
TOMCAT_INSTALL_DIR=/opt/tomcat

# Move Apache Tomcat directory to the installation directory
mv apache-tomcat-${TOMCAT_VERSION} ${TOMCAT_INSTALL_DIR}

# Define environment variables
export CATALINA_HOME=${TOMCAT_INSTALL_DIR}
export PATH=${CATALINA_HOME}/bin:${PATH}

# Start Apache Tomcat
${CATALINA_HOME}/bin/startup.sh
