#!/bin/sh
# This is a comment!
echo "App Started"	# This is a comment, too!

docker run --name postgresql \
    -e POSTGRES_USER=myusername \
    -e POSTGRES_PASSWORD=mypassword \
    -p 5432:5432 \
    -v /data:/var/lib/postgresql/data \
    -d postgres

echo "App Completed"