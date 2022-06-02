[> Home](../README.md)    [> ADRs](README.md)

---

# Use cloud infrastructure<!-- ADR title //-->

Date: 2022-06-01<!-- current date //-->

## Status

Confirmed <!-- (Draft|Proposed|Confirmed) //-->

## Context

We need to be able to scale DCC Spotlight without spending much time and resources. We discussed traditional hosting provider vs cloud provider pros and cons.<!-- Add some context to explain what was the reason to introduce this ADR //-->

## Decision

We voted for AWS as main provider for our project.<!-- The decision given with with rational // -->

## Consequences

**Positive:**

- AWS has many ready-to-use services<!-- One of the drivers to consider it // -->
- Some services can be easy to start with (and yet hard to master)

**Negative:**

- We raise a bar with that decision, since there are limited amount of AWS specialist on the market<!-- One of the drivers to reject it // -->

**Risks:**

- Classic vendor lock-in, which we need to tackle with some deployment abstraction like Terraform<!-- Some risks // -->

**Bonus Features:**

- <!-- What we get for free // -->
Amazon EC2 - cloud compute
Amazon S3 - files storage  
AWS Lambda - serverless, event-driven compute service
Amazon Aurora - relational database management system with full PostgreSQL compatibility

---

[> Home](../README.md)    [> ADRs](README.md)