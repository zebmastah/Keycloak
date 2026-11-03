#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

if [[ ! -f .env ]]; then
  cp .env.example .env
  echo "Created .env from .env.example"
else
  echo ".env already exists"
fi

mkdir -p keycloak/realm-export keycloak/themes infra/terraform/modules/keycloak infra/terraform/environments/dev infra/terraform/environments/staging infra/terraform/environments/prod infra/helm/keycloak/templates

echo "Repository bootstrap complete."
