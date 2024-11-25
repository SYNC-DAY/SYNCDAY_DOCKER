#!/bin/bash

# Docker 실행
docker-compose up -d

# ES 초기화 스크립트 실행
sleep 10  # ES 시작 대기
./init-index.sh