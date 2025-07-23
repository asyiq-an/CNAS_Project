# CNAS_Project

## CNAS Dir Tree 2nd test
```
CNAS_Project/
├── .github/
│   └── workflows/
│       ├── etc.yml                 # etc
├── charts/
│   └── cnas-crud-php/             # your Helm chart, refactored
│       ├── Chart.yaml
│       ├── values.yaml
│       ├── templates/
│       └── .helmignore
├── services/                      # all PHP micro‑services
│   ├── create-service/
│   │   ├── Dockerfile
│   │   └── index.php, db.php
│   ├── delete-service/
│   │   ├── Dockerfile
│   │   └── index.php, db.php
│   ├── query-service/
│   │   ├── Dockerfile
│   │   └── index.php, db.php
│   └── update-service/
│       ├── Dockerfile
│       └── index.php, db.php
├── database/
│   ├── users.sql                 # initialization SQL
│   └── Dockerfile                # if you need a custom MySQL image
├── ingress/
│   └── kong.yml                  # Kong ingress configuration
├── docker-compose.yml            # for local dev
├── namespace.yaml                # Kubernetes namespace
├── .dockerignore
└── README.md
```
