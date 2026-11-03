# Operations

## Day-to-day

- Run local services via `make up`.
- Inspect logs with `make logs`.
- Validate repository health with `make validate`.
- Keep realm exports in version control and inspect diffs before applying them.

## Upgrades

- Upgrade the Keycloak image version in `docker/keycloak/Dockerfile`.
- Test in local or staging first.
- Validate compatibility with the realm export and custom theme assets.

## Rollback

- Roll back the repository revision or deployment version in your CI/CD environment.
- Restore prior realm export files if a configuration regression is detected.
- Keep database backups for critical environments.
