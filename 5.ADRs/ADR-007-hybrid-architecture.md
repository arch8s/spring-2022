[> Home](../README.md) [> ADRs](README.md) > **ADR-007** Use hybrid architecture

[< Prev](ADR-006-security-zero-trust.md)  |  [Next >](ADR-008-separation-of-concerns.md)

---


# Use hybrid architecture: A modular monolith with a decomposed database and with service-based 

Date: 2022-06-01 

## Status

Confirmed

## Context

In our [Architecture Characteristics Analyses](../2.Solution/2.2.ArchitectureCharacteristics.md) we have identified following architectural characteristics:
* Simplicity *
* Cost *
* Domain partitioning 
* Scalability *


Ship the product to the market first.

Different architecture styles we have considered:

### Monolith
> Monoliths is a system in which all the code is deployed as a single process

**Positive:** 
- Single repository
- Single CI/CD pipeline 
- Single set of infrastructure
- Easy to handle DB transactions

**Negative:**
- Big bal of mud
- Tight coupling between functionalities 
- No domain boundaries
- All code is globally accessible
- Need to understand the entire codebase

### Modular Monolith
> As a subset of the single process monolith, the modular monolith is a variation: the single process consists of separate modules, each of which can be worked on independently, but which still need to be combined for deployment

**Positive:**
- Single repository
- Single CI/CD pipeline
- Single set of infrastructure
- Easy to handle DB transactions
- Easier to change
- Cheaper to maintain

**Negative:**
- database lacks decomposition - we've mitigated this risk by decomposed database into separate schemas, logically separation 
- can't scale indefensibly due to db connection limitations

[Monolith to microservices, Sam Newman](https://learning.oreilly.com/library/view/monolith-to-microservices/9781492047834/ch01.html#:-:text=And%20the%20modular%20monolith)

### Microservices
> Microservices are independently deployable services modeled around a business domain. They communicate with each other via networks

**Positive:**
- clear boundaries between services 
- deployed independently 
- can be scaled independently
- free of tech stack

**Negative:**
- A five-person startup is likely to find a microservice architecture a drag.
- Bad choice for brand-new products
- Multiple repositories 
- Multiple CI/CD pipelines
- Network overhead
- Complex cross-service transactions
- Expensive to change

[Building microservices, Sam Newman](https://learning.oreilly.com/library/view/building-microservices-2nd/9781492034018/ch01.html#idm45112648818104)


## Decision

We decided to take monolith-first approach, and add some bits and nuts of serverless for resource intensive tasks.
To fully support all the requirements, we start from modular monolith with service-based architecture and decomposed database.

We will scale some services with serverless approach, that's how we bring hybrid approach to the application. 
For example, one of the most CPU-intensive and memory-consuming task will be PDF generation, so use of serverless stack here could help us a bit.

## Consequences

**Positive:**

- We are able to optimize and scale system
- We still keep monolith-first approach
- We can replace serverless with paid service later on.

**Negative:**

- Serverless would limit us in technical decisions, like databases used by serverless
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

