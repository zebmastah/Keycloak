# Keycloak operations

This document describes the intended operational model for the repository.

## Local development

- Use Docker Compose to run PostgreSQL and Keycloak locally.
- Keep realm configuration in `keycloak/realm-export` as reviewed JSON artifacts.
- Use `.env` for local overrides and never commit secrets.

## Production concerns

- Deploy through infrastructure or Kubernetes manifests in `infra/`.
- Prefer managed secrets and environment-specific configuration.
- Avoid direct modifications in live environments without an approved deployment path.

## CI/CD guidance

- Validate the repository structure and configuration on every push and pull request.
- Run smoke checks before promoting to staging or production.
- Require review and artifact verification for realm changes.
