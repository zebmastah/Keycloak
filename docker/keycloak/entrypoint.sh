#!/bin/bash
set -euo pipefail

exec /opt/keycloak/bin/kc.sh "$@"
