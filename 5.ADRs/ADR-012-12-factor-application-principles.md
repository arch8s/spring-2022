[> Home](../README.md) [> ADRs](README.md) > **ADR-012** Use 12-factor application principles

[< Prev](ADR-011-4-eyes-review.md)  |  [Next >](ADR-013-strapi-headless-cms.md)

---

# Use 12-factor application principles

Date: 2022-06-01

## Status

Confirmed

## Context

Architectural erosion is a recurrent problem  faced by software architects. Despite this fact, the process is usually tackled in ad hoc way, without adequate tool support at the architecture level. To address this issue, we describe the preliminary design of a recommendation system whose main purpose is to provide refactoring guidelines for developers and maintainers during the task of reversing an architectural erosion process.

[The 12 Factor App](https://12factor.net/) is a methodology developed by the team at Heroku in 2012. It defines a set of rules (known as the 12 Factor App Principles) to follow when building SaaS applications.

To avoid the cost of software erosion. To control the dynamics of organic growth of an app over time. To Improve collaboration between developers working on same app's codebase.

Use declarative formats for setup automation, to minimize time and cost for new developers joining the project;
Have a clean contract with the underlying operating system, offering maximum portability between execution environments;
Are suitable for deployment on modern cloud platforms, obviating the need for servers and systems administration;
Minimize divergence between development and production, enabling continuous deployment for maximum agility;
And can scale up without significant changes to tooling, architecture, or development practices.

## Decision

We decided we are going to adhere to following 12 factor application principals:

### I. Codebase

One codebase tracked in revision control, many deploys

### II. Dependencies

Explicitly declare and isolate dependencies

### III. Config

Store config in the environment

### IV. Backing services

Treat backing services as attached resources

### V. Build, release, run

Strictly separate build and run stages

### VI. Processes

Execute the app as one or more stateless processes

### VII. Port binding

Export services via port binding

### VIII. Concurrency

Scale out via the process model

### IX. Disposability

Maximize robustness with fast startup and graceful shutdown

### X. Dev/prod parity

Keep development, staging, and production as similar as possible

### XI. Logs

Treat logs as event streams

### XII. Admin processes

Run admin/management tasks as one-off processes

## Consequences

**Positive:**

- Avoid the cost of software erosion
- Controls the dynamics of organic growth of an app over time
- Improves collaboration between developers working on same app’s codebase
- Apps can grow and shrink in response to demand, saving you infrastructure costs.

**Negative:**

**Risks:**

**Bonus Features:**

- [Entropy Kills Software](https://learning.oreilly.com/library/view/software-architecture-metrics/9781098112226/ch09.html#entropy_kills_software)
- [Erosion Resistance](https://learning.oreilly.com/library/view/heroku-up-and/9781449341381/ch02.html#_erosion_resistance)
- [Twelve-Factor Applications](https://learning.oreilly.com/library/view/migrating-to-cloud-native/9781492047605/ch01.html#twelve_factor)
- [The New Heroku (Part 4 of 4): Erosion-resistance & Explicit Contracts](https://blog.heroku.com/the_new_heroku_4_erosion_resistance_explicit_contracts)
- [Recommending Refactorings to Reverse Software Architecture Erosion](https://gsd.uwaterloo.ca/sites/default/files/Full%20Text.pdf)

---

[< Prev](ADR-011-4-eyes-review.md)  |  [Next >](ADR-013-strapi-headless-cms.md)
