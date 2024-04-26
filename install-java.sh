#!/bin/bash

# Update package lists
sudo apt update

# Install OpenJDK
sudo apt install openjdk-11-jdk -y

# Get the installation path of OpenJDK
JAVA_PATH=$(update-alternatives --query java | grep 'Value: ' | grep -o '/.*/bin/java')
JAVA_HOME=$(update-alternatives --query java | grep 'Value: ' | grep -o '/.*/bin/java' | xargs dirname | xargs dirname)


# Set JAVA_HOME in /etc/profile
echo "export JAVA_HOME=$JAVA_HOME" | sudo tee -a /etc/profile

# Load the environment variables
source /etc/profile

# Verify installation and JAVA_HOME configuration
java -version
echo "JAVA_HOME is set to: $JAVA_HOME"