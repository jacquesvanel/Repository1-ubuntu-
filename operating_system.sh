#!/bin/bash
#This is the script to find out what operating system a machine is 

echo -e "This machine is: "
cat /etc/os-release | grep ^ID= | awk -F "=" '{print $2}'

