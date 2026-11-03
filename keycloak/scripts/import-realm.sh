#!/usr/bin/env bash
set -euo pipefail

REALM_FILE="${1:-keycloak/realm-export/realm.json}"
KC_ADMIN_URL="${KC_ADMIN_URL:-http://localhost:8080}"
KC_ADMIN_USER="${KC_ADMIN_USER:-admin}"
KC_ADMIN_PASSWORD="${KC_ADMIN_PASSWORD:-change-me}"

if [[ ! -f "$REALM_FILE" ]]; then
  echo "Realm file not found: $REALM_FILE" >&2
  exit 1
fi

curl -sS -X POST "$KC_ADMIN_URL/admin/realms" \
  -H 'Content-Type: application/json' \
  -u "$KC_ADMIN_USER:$KC_ADMIN_PASSWORD" \
  --data @"$REALM_FILE"
