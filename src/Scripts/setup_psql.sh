#!/bin/sh

# Error handling
set -e
set -o pipefail

echo "PSQL Script Started"	# This is a comment, too!


if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

if [ "whereis psql | grep ' ' -ic" == 1 ]; then
        echo "psql is installed, skipping..."
    else
        echo "installing psql..."
        sudo apt install postgresql postgresql-contrib
fi

echo "PSQL Completed"