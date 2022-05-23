#!/bin/sh

# Error handling
set -e
set -o pipefail

echo "Script Started"	# This is a comment, too!


if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

## First refresh local server package index
echo "Updating Local Packages"
sudo apt update

sh setup_node.sh

# # Postgres
if [ "whereis psql | grep ' ' -ic" == 1 ]; then
        echo "psql is installed, skipping..."
    else
        echo "installing psql..."
        sudo apt install postgresql postgresql-contrib
fi

## SFTP



