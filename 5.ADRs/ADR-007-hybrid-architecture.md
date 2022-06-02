[> Home](../README.md)    [> ADRs](README.md)

---

# Use hybrid architecture <!-- ADR title //-->

Date: 2022-06-01 <!-- current date //-->

## Status

Confirmed

<!-- (Draft|Proposed|Confirmed) //-->

## Context

One of the identified requirements is a scalability requirement. To fully support it, we start from modular monolith with service-based architecture,
we will scale some services with serverless approach, that's how we bring hybrid approach to the application. For example, one of the most CPU-intensive
and memory-consuming task will be PDF generation, so use of serverless stack here could help us a bit.

<!-- Add some context to explain what was the reason to introduce this ADR //-->

## Decision

We decided to take monolith-first approach, and add some bits and nuts of serverless for resource-greedy tasks.

<!-- The decision given with rational // -->

## Consequences

**Positive:**

- We are able to optimize and scale system<!-- One of the drivers to consider it // -->
- We still keep monolith-first approach
- We can replace serverless with paid service later on.

**Negative:**

- Serverless would limit us in technical decisions, like
  - Databases used by serverless
  - Cold-boot latency
  - JSON for communication
  - Technology stack will be from variety of programming languages, supported by cloud provider. <!-- One of the drivers to reject it // -->
- We need to define "the margin call" costs for using serverless

**Risks:**

- Possible vendor lock-in with serverless

**Bonus Features:**

- "Infinite" scalability of serverless <!-- What we get for free // -->

---

[> Home](../README.md)    [> ADRs](README.md)