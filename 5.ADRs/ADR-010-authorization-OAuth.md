[> Home](../README.md) [> ADRs](README.md) > **ADR-010** Use OAuth

[< Prev](ADR-009-cloud-infrastructure-AWS.md)  |  [Next >](ADR-011-4-eyes-review.md)

---

# Use OAuth for authorization

Date: 2022-06-01

## Status

Confirmed


## Context

We have to provide ease-of-use as a hard requirement. Most of the users nowadays have Meta/Google Mail/Apple ID accounts, so adding such functionality as OAuth authN will bring us a broader audience for our services and also improve a bit their user experience.

## Decision

We decided to use OAuth as a key authorization, for internal users we need to provide a authorization fallback (login+password+2FA) in case some or all of these public OAuth go down.

## Consequences

**Positive:**

- Easier to signup, increases the conversion into the customers
- Improves the access restoration

**Negative:**

- OAuth provider could have lower SLA/SLO

**Risks:**



**Bonus Features:**



---

[< Prev](ADR-009-cloud-infrastructure-AWS.md)  |  [Next >](ADR-011-4-eyes-review.md)
