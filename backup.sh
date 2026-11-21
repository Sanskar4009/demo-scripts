#!/bin/bash

<<help
 this will take a backup of the scripts

e.g 
./backup.sh <source> <dest>

src /home/ubuntu/scripts
dest /hoem/ubuntu/backups
help

src=$1

dest=$2

timestamp=$(date '+%Y_%m_%d')

zip -r "$dest/backup-$timestamp.zip" $src >/dev/null

aws s3 sync "$dest" s3://sanskar-practice-server-backup

echo "backup done & uploded to s3"
