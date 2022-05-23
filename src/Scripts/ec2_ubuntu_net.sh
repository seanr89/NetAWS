#!/bin/sh

# Error handling
set -e

echo "Script Started"	# This is a comment, too!


if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

## First refresh local server package index
echo "Updating Local Packages"
sudo apt update

#sudo passwd ubuntu

#sh setup_node.sh

# # Postgres
#sh setup_psql.sh mypass
# if [ "whereis psql | grep ' ' -ic" == 1 ]; then
#         echo "psql is installed, skipping..."
#     else
#         echo "installing psql..."
#         sudo apt install postgresql postgresql-contrib
# fi

# SFTP
echo "SFTP work"
sh setup_sftp.sh seanr pass123 sftp

echo "Job Complete"



