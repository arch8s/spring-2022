[> Home](../README.md) [> ADRs](README.md) > **ADR-013** Use Strapi Headless CMS

[< Prev](ADR-012-12-factor-application-principles.md)  |  [Next >](ADR-014-donation-platforms.md)

---

# 013 Use Strapi Headless CMS

Date: 2022-06-01

## Status

Confirmed

## Context

The Platform should allow offerings which contain rich text, links, and downloadable readable content such as PDFs, but no other downloads.

### Comparison os Headless CMS solutions
https://www.contentful.com/pricing/
https://kontent.ai/pricing/
https://strapi.io/

## Decision

We have decided to use Headless CMS strapi
- Free 
- Deploy to AWS Amplify 
- Save hosting

## Consequences

**Positive:**
- Self-hosted - free
- 

**Negative:**
- Needs to supported 
- Vendor Lock-in 

**Risks:**
- We need validate if strapi has some security vulnerabilities  

**Bonus Features:**

- 

---

[< Prev](ADR-012-12-factor-application-principles.md)  |  [Next >](ADR-014-donation-platforms.md)
