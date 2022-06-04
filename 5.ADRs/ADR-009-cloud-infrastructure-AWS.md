[> Home](../README.md) [> ADRs](README.md) > **ADR-009** Use cloud infrastructure - AWS

[< Prev](ADR-008-separation-of-concerns.md)  |  [Next >](ADR-010-authorization-OAuth.md)

---

# Use cloud infrastructure - AWS

Date: 2022-06-01

## Status

Confirmed

## Context

We need to be able to scale DCC Spotlight without spending much time and resources. We discussed traditional hosting provider vs cloud provider pros and cons.

## Decision

We voted for AWS as main provider for our project.

## Consequences

**Positive:**

- AWS has many ready-to-use services
- Some services can be easy to start with (and yet hard to master)
- [nonprofit credit program](https://aws.amazon.com/government-education/nonprofits/nonprofit-credit-program/)

**Negative:**

- We raise a bar with that decision, since there are limited amount of AWS specialist on the market

**Risks:**

- Classic vendor lock-in, which we need to tackle with some deployment abstraction like Terraform

**Bonus Features:**

- 
Amazon ECS - Elastic Container Service
Amazon S3 - files storage  
AWS Lambda - serverless, event-driven compute service
Amazon Aurora - relational database management system with full PostgreSQL compatibility

---

[< Prev](ADR-008-separation-of-concerns.md)  |  [Next >](ADR-010-authorization-OAuth.md)
