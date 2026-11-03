#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

printf '\n==> Validating repository structure\n'
for path in \
  .github/workflows \
  docker/keycloak \
  infra \
  keycloak \
  scripts \
  tests; do
  if [[ ! -d "$path" ]]; then
    echo "Missing required directory: $path" >&2
    exit 1
  fi
done

printf '\n==> Checking required files\n'
for file in \
  README.md \
  .env.example \
  docker-compose.yml \
  Makefile \
  .gitignore; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file" >&2
    exit 1
  fi
done

printf '\n==> Validation complete\n'
