#!/bin/sh

# Error handling
set -e

echo "SFTP Script Started"

if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

username=$1
password=$2
folder=$3

yes | apt install ssh

printf "\n Match group sftp \n
ChrootDirectory /home\n
X11Forwarding no\n
AllowTcpForwarding no\n
ForceCommand internal-sftp" >> /etc/ssh/sshd_config

sudo systemctl restart ssh

sudo addgroup sftp

sudo useradd -m $username -g sftp

yes $password | sudo passwd $username

mkdir $folder
chmod 700 $folder

echo "SFTP Complete"