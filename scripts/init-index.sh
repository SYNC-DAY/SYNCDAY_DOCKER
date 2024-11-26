#!/bin/bash

until curl -s http://localhost:9200 > /dev/null; do
    echo 'Waiting for Elasticsearch...'
    sleep 3
done

# 기존 인덱스 삭제
echo "Deleting existing indices..."
curl -X DELETE "localhost:9200/*"

# 각 인덱스 생성
echo "Creating user_search index..."
curl -X PUT "localhost:9200/user_search" -H 'Content-Type: application/json' -d "@config/elasticsearch/indices/user_search.json"

echo "Creating project_search index..."
curl -X PUT "localhost:9200/project_search" -H 'Content-Type: application/json' -d "@config/elasticsearch/indices/project_search.json"

echo "Creating workspace_search index..."
curl -X PUT "localhost:9200/workspace_search" -H 'Content-Type: application/json' -d "@config/elasticsearch/indices/workspace_search.json"

echo "Creating cardboard_search index..."
curl -X PUT "localhost:9200/cardboard_search" -H 'Content-Type: application/json' -d "@config/elasticsearch/indices/cardboard_search.json"

echo "Creating card_search index..."
curl -X PUT "localhost:9200/card_search" -H 'Content-Type: application/json' -d "@config/elasticsearch/indices/card_search.json"

echo "Creating attachment_search index..."
curl -X PUT "localhost:9200/attachment_search" -H 'Content-Type: application/json' -d "@config/elasticsearch/indices/attachment_search.json"

echo "Creating comment_search index..."
curl -X PUT "localhost:9200/comment_search" -H 'Content-Type: application/json' -d "@config/elasticsearch/indices/comment_search.json"

echo "All indices created successfully!"

# 생성된 인덱스 확인
echo "Created indices:"
curl 'http://localhost:9200/_cat/indices?v'