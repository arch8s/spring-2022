[> Home](../README.md) [> ADRs](README.md) > **ADR-007** Use hybrid architecture

[< Prev](ADR-006-security-zero-trust.md)  |  [Next >](ADR-008-separation-of-concerns.md)

---


# Use hybrid architecture: modular monolith with service-based 

Date: 2022-06-01 

## Status

Confirmed

## Context

One of the identified requirements is a scalability requirement. To fully support it, we start from modular monolith with service-based architecture,
we will scale some services with serverless approach, that's how we bring hybrid approach to the application. For example, one of the most CPU-intensive
and memory-consuming task will be PDF generation, so use of serverless stack here could help us a bit.


## Decision

We decided to take monolith-first approach, and add some bits and nuts of serverless for resource-greedy tasks.

## Consequences

**Positive:**

- We are able to optimize and scale system
- We still keep monolith-first approach
- We can replace serverless with paid service later on.

**Negative:**

- Serverless would limit us in technical decisions, like
  - Databases used by serverless
  - Cold-boot latency
  - JSON for communication
  - Technology stack will be from variety of programming languages, supported by cloud provider. 

- We need to define "the margin call" costs for using serverless

**Risks:**

- Possible vendor lock-in with serverless

**Bonus Features:**

- "Infinite" scalability of serverless 

---

[< Prev](ADR-006-security-zero-trust.md)  |  [Next >](ADR-008-separation-of-concerns.md)

