#!/bin/sh

# Error handling
set -e

echo "Node Script Started"	# This is a comment, too!


if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

## Node Checks and Install
if [ "whereis node | grep ' ' -ic" == 1]; then
        echo "node is installed, skipping..."
    else
        echo "download node"
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

        # #Active NVM
        echo "installing nvm"
        . ~/.nvm/nvm.sh

        echo "installing node"
        # nvm install node
        nvm install 16.15.0

        node -e "console.log('Running Node.js ' + process.version)"
fi

echo "Node Setup Completed"