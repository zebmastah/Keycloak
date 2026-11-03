# Architecture

This repository is designed as a layered Keycloak platform foundation.

## Layering

1. Infrastructure layer (`infra/`)
   - Terraform or Kubernetes deployment assets.
   - Environment-specific configuration.
2. Runtime layer (`docker/`)
   - Container definitions and local orchestration.
3. Realm and customization layer (`keycloak/`)
   - JSON exports, themes, helper scripts.
4. Automation layer (`.github/workflows/`)
   - Validation and CI/CD execution.

## Design principles

- All environment-specific settings are externalized.
- Realm configuration remains reviewable and auditable.
- CI/CD validates structure before deployment actions occur.
- Local and remote environments follow the same configuration model.
