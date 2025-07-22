#!/bin/sh

DIR_NAME="/var/tmp/services-logs"

if [ ! -d "$DIR_NAME" ]; then
    mkdir -p "$DIR_NAME"
    echo "Directory $DIR_NAME created."
    chmod 777 "$DIR_NAME"
    echo "Directory $DIR_NAME set to 777 permissions."
else
    echo "Directory $DIR_NAME already exists."
fi

echo "Starting setup..."
docker compose up setup
echo "Setup completed."

echo "Starting services..."
docker compose -f docker-compose.yml -f extensions/filebeat/filebeat-compose.yml up -d
echo "Services started."

echo "Setup completed."
