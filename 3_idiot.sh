#!/bin/bash

hero="rancho"
villian="virus"

#user define variabels
echo "hero of the film $hero"
echo "villiam of the film $villian"

#shell/enviroment variables was also there(pre-definde-variable)


echo "curent user for this server is $USER"

# user input

read -p "what is your name" name

echo "my name is $name"


# arguments


# ./s_idiots raju farhan rancho

echo "movie name $0"
echo "1st character $1"
echo "2nd character $2"
echo "3rd character $3"
echo "all the character and movie is $@"

echo "total no of argument passed $#"
