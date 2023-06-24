#!/bin/sh

# Install OpenJDK 8
apk add openjdk8

# Install OpenJDK 11
apk add openjdk11

# Verify Java installations
java -version
