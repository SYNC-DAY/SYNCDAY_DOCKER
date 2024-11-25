# Elasticsearch 설정 가이드

## 필수 조건
- Docker
- Docker Compose

## 설치 및 실행 방법

1. 저장소 클론
```bash
git clone [your-repo-url]
cd elasticsearch

2. 실행
# Linux/Mac
chmod +x scripts/*.sh
./scripts/setup.sh

# Windows
docker-compose up -d
# ES 시작 대기 (약 30초)
curl -X PUT "localhost:9200/user_search" -H "Content-Type: application/json" -d @config/elasticsearch/nori-analyzer.json

3. 확인
Elasticsearch: http://localhost:9200
Kibana: http://localhost:5601