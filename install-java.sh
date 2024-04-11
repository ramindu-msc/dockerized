sudo apt install default-jdk -y
java_home=$(sudo update-alternatives --config java | grep 'java' | awk '{print $3}')
# Append JAVA_HOME setting to /etc/profile
echo "export JAVA_HOME=$java_home" | sudo tee -a /etc/profile > /dev/null
# Append JAVA_HOME/bin to the PATH variable in /etc/profile
echo "export PATH=\$JAVA_HOME/bin:\$PATH" | sudo tee -a /etc/profile > /dev/null
# Source the /etc/profile to apply changes
source /etc/profile
echo "Java home set to: $java_home"