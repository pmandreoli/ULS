#!/bin/bash

distro=$(lsb_release -is) ;

if [ "$distro" == "Ubuntu" ]
then
sudo apt install -y python3 python3-pip build-essential vim wget;
else
sudo yum install -y epel-release python3 python3-devel gcc gcc-c++ vim wget;
fi

pip3 install virtualenv --user;
mkdir ansible$1;
virtualenv ansible$1/;
. ansible$1/bin/activate;
pip install ansible==$1;

