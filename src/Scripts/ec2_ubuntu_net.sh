#!/bin/sh

# Error handling
set -e

echo "Script Started - Functioning on EC2 Instance!"	# This is a comment, too!

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

## First refresh local server package index
echo "Check and Update Local Packages"
sudo apt update

# ubuntu user password change is required later
sudo passwd ubuntu

# run the basic node setup!
sh setup_node.sh

# Postgres default
sh setup_psql.sh mypass

# SFTP
echo "SFTP Installation"
sh setup_sftp.sh seanr pass123 sftp

echo "Process Job Complete"



