[> Home](../README.md)    [> ADRs](README.md)

---

# Use versioning for the REST API

Date: 2022-05-27

## Status

Confirmed

## Context

We want to support different client versions for the mobile or web application.

## Decision

We deliberately decided to use version prefix in API URL, i.e. /api/v1/ in order to have backward-compatible changes for different mobile (iOS/Android/Aurora) and web clients.

## Consequences

**Positive:**
- Simplicity of adding new features via versioning
- Ensure we have backward compatible changes

**Negative:**
- Could be cost-ineffective for the rare-to-never updates

**Risks:**
- The cost of support multiple versions. We could consider to add limit for versions in support (like 3 last versions are maintained secure and clean of bugs).

**Bonus Features:**


---

[> Home](../README.md)    [> ADRs](README.md)
