#!/bin/sh

# Error handling
set -e
set -o pipefail

echo "Script Started"	# This is a comment, too!


if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi





