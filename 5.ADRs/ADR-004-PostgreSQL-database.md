[> Home](../README.md)    [> ADRs](README.md)

---

# Use PostgreSQL with multi-tenant database structure

Date: 2022-05-27

## Status

Comfirmed

## Context

We want to simplify the maintenance of the tech stack

## Decision

We decided to use the PostgreSQL [version 13.x](https://endoflife.date/postgresql) as a main database since
it has a good support from community and cloud platforms, rich of features and supports the multitenant databases.

We plan to use multitenant databases to isolate domains in modular architecture. It will help also to optimize hosting costs at start.

## Consequences

**Positive:**

- Cost-effective hosting (multiple databases on the same host but accessible via schema)
- Quick to learn since PostgreSQL has a really good coverage of standard ANSI SQL

**Negative:**

- PostgreSQL is not that effective for frequent updates due to vacuuming

**Risks:**

- It could be hard to change it later

**Bonus Features:**

- Support of many advanced query types (CTEs, Rolling windows for analytics)

---

[> Home](../README.md)    [> ADRs](README.md)
