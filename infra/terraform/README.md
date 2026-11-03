# Terraform

This directory is reserved for infrastructure-as-code resources related to Keycloak deployment.

Typical components:

- security groups, networking, DNS, and load balancers
- database provisioning
- managed secrets or secret injection
- environment-specific variables

Keep each environment under `infra/terraform/environments/<env>/` and use shared modules under `infra/terraform/modules/`.
