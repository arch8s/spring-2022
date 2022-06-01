[> Home](../README.md)    [> ADRs](README.md)

---

# Use zero-trust service communication model 

Date: 2022-05-28

## Status

Confirmed

## Context

We have a lot of personal data at our platform, we need to ensure we keep it safe

## Decision

We decided to pick [zero-trust service communication model](https://www.crowdstrike.com/cybersecurity-101/zero-trust-security/). It will require additional user permissions checks

## Consequences

**Positive:**

- Easy to scale
- Adds additional security

**Negative:**

- Requires additional steps to provide this level of security

**Risks:**
- Someone not familiar with Zero-Trust security principles could ignore it. We need address it

**Bonus Features:**
-

---

[> Home](../README.md)    [> ADRs](README.md)
