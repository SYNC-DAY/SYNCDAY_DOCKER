#!/bin/bash

# ES가 완전히 시작될 때까지 대기
until curl -s http://localhost:9200 > /dev/null; do
    echo 'Waiting for Elasticsearch...'
    sleep 3
done

echo "Creating user_search index..."
curl -X PUT "localhost:9200/user_search" -H 'Content-Type: application/json' -d @../config/elasticsearch/nori-analyzer.json

echo "Index creation completed!"