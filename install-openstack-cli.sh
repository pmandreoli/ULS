#!/bin/bash 
sudo apt install -y python3-venv build-essential python3-dev;
python3 -m venv $1;
. $1/bin/activate ;
pip install wheel;
pip install python-openstackclient;
if [ -n "$2" ] 
then
	pip install python-${2}client;
fi

