#!/bin/bash

       #Author : Fleur Yeboah
       #Date : 24-Feb-2022

   ## ---------- script that provides steps to installing and configuring SonarQube on Centos 7 -----------------            

 echo "Run this script to install SonarQube on your Centos server. Please note that SonarQube does not work when you start it as a root user."

if [

 echo
 sleep 3
 echo " Installation in progress..."
sleep 2 
echo
echo "This might take a while..."
sleep 2
echo "First let's do an update of the system"
sleep 2
 sudo yum update -y
clear
echo "\nUpdate is done!!\n"
sleep 2
echo "Now let's install java, Unzip, Wget and all the tools neccessary for this application"
sleep 2


 sudo yum install java-11-openjdk-devel java-11-openjdk wget unzip net-tools -y
 clear
 cd /opt
 echo
 sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899zip          clear 
 sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899     
 cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
 clear
 echo " System starting SonarQube..."
sleep 5
 ./sonar.sh start
 
if [ $? -ne 0 ]
then 
echo "the file sonar could not start, please check the firewall setting. Hint: open the port 9000 an dmake sure the firewall is enabled an dup and runnig on this machine"
exit 1
fi

 echo " SonarQube successfully started and configured. You may now connect to the SonarQube server through the browser by following below steps: "
 echo
 echo "\n http://<your-ip-address>:9000\n "
 echo "\n Please note that SonarQube uses port 9000.\n "
 echo "\nIf you are unable to locate your ip address, run below command...\n"
 echo -e " sudo ifconfig"
 echo
 echo " PS: Please note that some servers may have firewall enabled. If you are unable to connect to the SonarQube browser, be sure to run the below command to open port 9000.The # must be removed for the commands to run successfully."


 #sudo firewall-cmd --permanent --add-port=9000/tcp
 #sudo firewall-cmd --reload 
