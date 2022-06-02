[> Home](../README.md)    [> ADRs](README.md)

---

# Use separation of concerns<!-- ADR title //-->

Date: 2022-06-01<!-- current date //-->

## Status

Confirmed <!-- (Draft|Proposed|Confirmed) //-->

## Context

Even if we start from monolith-first approach, we need to keep strict domain and service boundaries between different parts of the system. It will allow us to extract later dedicated microservices with less friction than we would have with refactoring of tangled dependencies<!-- Add some context to explain what was the reason to introduce this ADR //-->

## Decision

We decided to bring strong independent verticals for the modules of the monolith. The idea is taken from hexagonal architecture, where the module has limited exposure to another module. Basically, it is a slice which is able to operate independently (from HTTP request down to the core business logic)

<!-- The decision given with with rational // -->

## Consequences

**Positive:**

- We will get loose coupling outside of the vertical, strong cohesion inside of the vertical <!-- One of the drivers to consider it // -->
- With CQRS we will be able to scale parts of the monolith independently

**Negative:**

- Developers need to learn the new approach<!-- One of the drivers to reject it // -->

**Risks:**

- <!-- Some risks // -->

**Bonus Features:**

- <!-- What we get for free // -->

---

[> Home](../README.md)    [> ADRs](README.md)