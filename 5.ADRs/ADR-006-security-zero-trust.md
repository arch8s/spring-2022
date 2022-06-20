[> Home](../README.md) [> ADRs](README.md) > **ADR-006** Use zero-trust service communication model

[< Prev](ADR-005-use-docker.md)  |  [Next >](ADR-007-hybrid-architecture.md)

---


# Use zero-trust service communication model 

Date: 2022-05-28

## Status

Confirmed

## Context

1. The _Spotlight_ communicates with external systems in a cloud environment (AWS), and we can't rely on an assumption that requests from the same subnetwork are safe.

2. The _Spotlight_ is implemented as a modularized monolith and those modules will eventually be extracted to become dedicated services. We have to secure such calls at an early stage to make it easier to migrate from module to service.

3. The _Spotlight_ have a lot of personal data. We need to ensure we keep it safe.


## Decision

We decided to pick [zero-trust service communication model](https://www.crowdstrike.com/cybersecurity-101/zero-trust-security/). It will require additional user permissions checks

## Consequences

**Positive:**

- Easy to scale - simplify scaling with dedicated services

- Adds additional security

- Allows for proper separation of communication between modules and readiness for extracting modules as services
 
**Negative:**

- Requires additional steps to provide this level of security

- add complexity to communication between modules within the same domain

- requires involving identity service and increase the complexity of internal logic within monolithic services

- Some optimization within monolithic modules will be required when modules are incorporated

**Risks:**

- Someone not familiar with Zero-Trust security principles could ignore it. We need to address it.

**Bonus Features:**

- Only a device that is procured and actively managed by the enterprise is allowed access.

- All managed devices need to be uniquely identified using a device certificate that references the record in a device inventory database, which needs to be maintained.

- All users are tracked and managed in a user database and a group database that tightly integrate with HR processes that manage job categorization, usernames, and group memberships for all users.

- A centralized user-authentication portal validates two-factor credentials for users requesting access to resources.

- An unprivileged network that very closely resembles an external network, although within a private address space, is defined and deployed. The unprivileged network only connects to the internet, and to limited infrastructure and configuration management systems. All managed devices are assigned to this network while physically located in the office, and there needs to be a strictly managed access control list (ACL) between this network and other parts of the network.

- Enterprise applications are exposed via an Internet-facing access proxy that enforces encryption between the client and the application.

- An access control manager interrogates multiple data sources to determine the level of access given to a single user and/or a single device at any point in time. The latter is called endpoint verification.

---

[< Prev](ADR-005-use-docker.md)  |  [Next >](ADR-007-hybrid-architecture.md)
