#!/bin/bash

echo "Starting Elasticsearch..."
docker-compose up -d
echo "Waiting for Elasticsearch to start..."
until curl -s http://localhost:9200 >/dev/null; do
    sleep 1
done
echo "Elasticsearch is up and running!"
