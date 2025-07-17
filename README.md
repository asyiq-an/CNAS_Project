# CNAS_Project

## CNAS Dir Tree t3.2
```
CNAS_Project/
├── .github/
│   └── workflows/
│       ├── ci.yml                 # build & push all service images
│       └── cd.yml                 # deploy Helm chart to k8s
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
