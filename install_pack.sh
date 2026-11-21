#!/bin/bash

<<info
this scripts will help you to install the nginx

info


echo "Installing $1"i

sudo apt-get update > /dev/null 
sudo apt-get install $1 -y > /dev/null #/dev/null it is like an dustbin to throw 

echo "$1 is intalled successfully"



