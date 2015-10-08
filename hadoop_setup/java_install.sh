yum install wget
#Use wget only if you do not have jdk downloaded already
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.tar.gz
sudo mkdir /opt/java
tar -zxf jdk-8u45-linux-x64.tar.gz
mv jdk1.8.0_45/ /opt/java/
#This file handles profile specific environment variables
echo -e "export JAVA_HOME=/opt/java/jdk1.8.0_45/\nexport PATH=\$JAVA_HOME/bin/:\$PATH" >> /etc/profile.d/java.sh
source /etc/profile.d/java.sh
java -version
echo "Type sh create_user.sh"