#!/bin/bash

<<help
create a function for the repetitive tasks
help

function user_create {

read -p "enter the user name: " user_name
	
sudo useradd -m $user_name
	
echo "user added successfully"

}

user_create
