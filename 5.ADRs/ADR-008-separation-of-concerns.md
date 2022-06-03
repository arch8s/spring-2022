[> Home](../README.md) [> ADRs](README.md) > **ADR-008** Use separation of concerns

[< Prev](ADR-007-hybrid-architecture.md)  |  [Next >](ADR-009-cloud-infrastructure-AWS.md)

---

# Use separation of concerns

Date: 2022-06-01

## Status

Confirmed

## Context

Even if we start from monolith-first approach, we need to keep strict domain and service boundaries between different parts of the system. It will allow us to extract later dedicated microservices with less friction than we would have with refactoring of tangled dependencies

## Decision

We decided to bring strong independent verticals for the modules of the monolith. The idea is taken from hexagonal architecture, where the module has limited exposure to another module. Basically, it is a slice which is able to operate independently (from HTTP request down to the core business logic)


## Consequences

**Positive:**

- We will get loose coupling outside of the vertical, strong cohesion inside of the vertical 
- With CQRS we will be able to scale parts of the monolith independently

**Negative:**

- Developers need to learn the new approach

**Risks:**


**Bonus Features:**


---

[< Prev](ADR-007-hybrid-architecture.md)  |  [Next >](ADR-009-cloud-infrastructure-AWS.md)
