[> Home](../README.md) [> ADRs](README.md) > **ADR-005** Use Docker

[< Prev](ADR-004-PostgreSQL-database.md)  |  [Next >](ADR-006-security-zero-trust.md)

---

# Use Docker (+docker-compose) as a local development environment and production

Date: 2022-05-28

## Status

Confirmed

## Context

We would like to have reproducible environments to onboard developers faster. We reviewed Docker and Podman, they are mostly similar.

## Decision

We decided to pick Docker, since it allows us to have community support and share the same environment between all developers, remote and onsite.

## Consequences

**Positive:**

- Consistent environment
- Immutable deployments
- Ease of development
- Many cloud platforms and hosting providers supports Docker

**Negative:**

- Someone who is not familiar with it, needs additional onboarding

**Risks:**

**Bonus Features:**

- Safer deployements
- Easier to debug

---

[< Prev](ADR-004-PostgreSQL-database.md)  |  [Next >](ADR-006-security-zero-trust.md)

