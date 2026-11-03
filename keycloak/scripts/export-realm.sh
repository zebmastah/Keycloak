#!/usr/bin/env bash
set -euo pipefail

REALM_NAME="${1:-master}"
OUTPUT_PATH="${2:-keycloak/realm-export/${REALM_NAME}.json}"
KC_ADMIN_URL="${KC_ADMIN_URL:-http://localhost:8080}"
KC_ADMIN_USER="${KC_ADMIN_USER:-admin}"
KC_ADMIN_PASSWORD="${KC_ADMIN_PASSWORD:-change-me}"

mkdir -p "$(dirname "$OUTPUT_PATH")"

curl -sS -o "$OUTPUT_PATH" \
  -u "$KC_ADMIN_USER:$KC_ADMIN_PASSWORD" \
  "$KC_ADMIN_URL/admin/realms/$REALM_NAME"

printf 'Exported realm to %s\n' "$OUTPUT_PATH"
