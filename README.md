# Elasticsearch 설정 가이드

## 필수 조건

- Docker
- Docker Compose
- Git

## 설치 및 실행 방법

1. 저장소 클론

```bash
git clone clone https://github.com/three-ping/SyncDay_Docker.git
cd SyncDay_Docker
```

2. 실행

# Linux/Mac

```bash
# 스크립트 실행 권한 부여
chmod +x scripts/*.sh

# Docker Desktop 실행 확인 후
docker-compose up -d

# ES와 Kibana가 완전히 시작될 때까지 대기 (약 30초)
# 그 후 인덱스 생성
./scripts/init-index.sh
```

# Windows

```bash
# Docker Desktop 실행 확인 후
docker-compose up -d

# ES와 Kibana가 완전히 시작될 때까지 대기 (약 30초)
# Git Bash에서 실행
./scripts/init-index.sh

# 또는 PowerShell에서 실행
sh ./scripts/init-index.sh
```

# 3. 설치 확인

```bash
# Elasticsearch 확인
curl http://localhost:9200

# 생성된 인덱스 확인
curl 'http://localhost:9200/_cat/indices?v'
```

# 4. 접속 주소

Elasticsearch: http://localhost:9200
Kibana: http://localhost:5601
