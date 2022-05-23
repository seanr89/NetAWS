#!/bin/sh

# Error handling
set -e

echo "PSQL Script Started"	# This is a comment, too!


if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

if [ $# -eq 0 ]
    then
        echo "No Arguments provided!"
        exit
fi

if [ "whereis psql | grep ' ' -ic" == 1 ]; then
        echo "psql is installed, skipping..."
    else
        echo "installing psql..."
        sudo apt install postgresql postgresql-contrib

        systemctl restart postgresql

        service postgresql status

        sudo -i -u postgres

        exit
        exit
fi

echo "PSQL Completed"