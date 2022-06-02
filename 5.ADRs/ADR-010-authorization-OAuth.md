[> Home](../README.md)    [> ADRs](README.md)

---

# Use OAuth for authorization<!-- ADR title //-->

Date: 2022-06-01<!-- current date //-->

## Status

Confirmed
<!-- (Draft|Proposed|Confirmed) //-->

## Context

We have to provide ease-of-use as a hard requirement. Most of the users nowadays have Meta/Google Mail/Apple ID accounts, so adding such functionality as OAuth authN will bring us a broader audience for our services and also improve a bit their user experience.
<!-- Add some context to explain what was the reason to introduce this ADR //-->

## Decision

We decided to use OAuth as a key authorization, for internal users we need to provide a authorization fallback (login+password+2FA) in case some or all of these public OAuth go down.
<!-- The decision given with with rational // -->

## Consequences

**Positive:**

- Easier to signup, increases the conversion into the customers<!-- One of the drivers to consider it // -->
- Improves the access restoration

**Negative:**

- OAuth provider could have lower SLA/SLO<!-- One of the drivers to reject it // -->

**Risks:**

- <!-- Some risks // -->

**Bonus Features:**

- <!-- What we get for free // -->

---

[> Home](../README.md)    [> ADRs](README.md)
