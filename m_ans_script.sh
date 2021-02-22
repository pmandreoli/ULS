#!/bin/bash
sudo apt install epel-release python3 python3-devel gcc gcc-c++;
pip3 install virtualenv --user;
mkdir ansible$1;
virtualenv ansible$1/;
. ansible2.3/bin/activate;
pip install ansible==$1;

