[> Home](../README.md) [> ADRs](README.md) > **ADR-002** Use SPA + API to enable mobile app for platform

[< Prev](ADR-001-use-adr.md)  |  [Next >](ADR-003-rest-api-versioning.md)

---

# Use SPA + API to enable mobile app for platform

Date: 2022-05-27

## Status

Confirmed

## Context

We would like to split our customer-facing part of application into Single Page Application (SPA) + Backend API in order to allow Mobile 
application to communicate with the same backend API.

## Decision

We decided to switch from front-end monolith, where backend renders the UI to the more flexible SPA + API model.

## Consequences

**Positive:**
- We brought the API-first approach;
- We enabled mobile app to communicate with the same API;
- We split the responsibilities between Front-End (FE) and Backend (BE) to optimize the delivery pace.

**Negative:**
- We need to introduce additional security checks for the client browser.

**Risks:**
- The FE development could have additional complexity in case we have obsolete versions.

**Bonus Features:**
- We can easily bring public API to the companies who are interested in it

---

[< Prev](ADR-001-use-adr.md)  |  [Next >](ADR-003-rest-api-versioning.md)

