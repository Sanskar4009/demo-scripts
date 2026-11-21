#!/bin/bash

<<help
this script will check that the user is existing or not
help

read -p "enter the user name you wanted to search:" user_name

count=$(cat /etc/passwd | grep $user_name | wc | awk '{print $1}') 


if [ "$count" == 0 ]; then 
	echo "user does not exist"
else
	echo "user exist"
fi
 
