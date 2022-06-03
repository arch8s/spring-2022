[> Home](../README.md) [> ADRs](README.md) > **ADR-011** Use 4-eyes principle

[< Prev](ADR-010-authorization-OAuth.md)  |  [Next >](ADR-012-12-factor-application-principles.md)

---

# Use 4-eyes principle

Date: 

## Status



## Context

The Four Eyes Principle (also Two-man rule) is a widely used Internal Control mechanism that requires that any activity by an individual within the organization that involves Material Risk profile must be controlled (reviewed, double checked) by a second individual that is independent and competent.


## Decision

We decided to try this approach to reduce the amount of possible errors.



## Consequences

**Positive:**

- Explicit review for all changes

**Negative:**

- Takes time of 2 engineers, need to keep good balance between dedicated time and due diligence

**Risks:**

- Cannot be applied for the organisations where one person possess critical expertise

**Bonus Features:**

- 

---

[< Prev](ADR-010-authorization-OAuth.md)  |  [Next >](ADR-012-12-factor-application-principles.md)
