#!/bin/bash
# Modified by Idriss Bakayoko
os=`sudo cat /etc/os-release | grep ^ID= | awk -F "=" '{print $2}'`
echo "let's get started"
sleep 5

echo -e "This machine is a $os Operating system"

if [ $os = ubuntu ]
then
echo "this is an ubuntu machine"
else
echo "This is not ubuntu"
fi
