#!/bin/bash

# Multiline comment
: <<'COMMENT'
This script creates a new Linux user.
It takes username and password as input.
COMMENT

echo "Creation of user"
function create_user {
# Take username
read -p "Enter the username: " user_name #-p means prompt

# Take password securely
read -s -p "Enter the password: " passwd #-s means it will hide while typing
echo

# Create user
if sudo useradd -m "$user_name"; then #-m means create a home directory for the user

    # Set password
    echo "$user_name:$passwd" | sudo chpasswd

    echo "User creation is done successfully"

else
    echo "User creation failed"
fi
}

function user_delete {
sudo userdel -r $user_name #-r means also deete from the home directory

echo "user deleted successfully"
}

function user_check {
if [ $(cat /etc/passwd | grep "$user_name" | wc | awk '{print $1}') ]; then
	echo "if wc is 0 user is deleted its confirm"
else
	echo "user is not deleted"
fi
}

create_user 
user_check
user_delete

