# Keycloak Platform Repository

This repository provides a solid starting point for managing Keycloak infrastructure, realm configuration, and deployment automation in a CI/CD-friendly structure.

## Repository structure

```text
.
├── .github/
│   └── workflows/
│       └── ci.yml
├── .devcontainer/
│   └── devcontainer.json
├── .vscode/
│   └── settings.json
├── docker/
│   ├── keycloak/
│   │   ├── Dockerfile
│   │   └── entrypoint.sh
│   └── docker-compose.yml
├── docs/
│   ├── architecture.md
│   ├── keycloak.md
│   └── operations.md
├── infra/
│   ├── terraform/
│   │   ├── modules/
│   │   │   └── keycloak/
│   │   ├── environments/
│   │   │   ├── dev/
│   │   │   ├── staging/
│   │   │   └── prod/
│   │   └── README.md
│   └── helm/
│       └── keycloak/
│           ├── Chart.yaml
│           ├── values.yaml
│           └── templates/
├── keycloak/
│   ├── realm-export/
│   │   ├── realm.json
│   │   └── README.md
│   ├── themes/
│   │   └── README.md
│   └── scripts/
│       ├── import-realm.sh
│       └── export-realm.sh
├── scripts/
│   ├── bootstrap.sh
│   ├── validate.sh
│   └── setup-env.sh
├── tests/
│   ├── smoke/
│   │   └── README.md
│   └── integration/
│       └── README.md
├── .env.example
├── .editorconfig
├── .gitattributes
├── .pre-commit-config.yaml
├── Makefile
├── docker-compose.yml
├── package.json
├── LICENSE
└── README.md
```

## Goals

- Keep Keycloak configuration versioned and reviewable.
- Separate local development, validation, and production deployment concerns.
- Make CI/CD pipelines easy to run with linting, schema validation, and smoke checks.
- Support multiple environments with a clear path for promotion.

## Getting started

1. Copy `.env.example` to `.env` and customize values.
2. Start services with Docker Compose or the provided Make targets.
3. Import or configure your Keycloak realm.
4. Validate infrastructure and application configuration using the scripts in `scripts/`.

## CI/CD expectations

- Use GitHub Actions or any Git provider pipeline to run linting, secret checks, Docker build validation, and realm export/import smoke tests.
- Treat exported realm data as code and review every change in pull requests.
- Run environment-specific deployment only from protected branches or tags.

## Notes

This repository intentionally avoids production secrets and hardcoded credentials. Store secrets in your CI/CD secret store or an external secret manager.
