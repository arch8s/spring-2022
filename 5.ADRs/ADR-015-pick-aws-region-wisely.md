
[> Home](../README.md) [> ADRs](README.md) > **ADR-015** Pick AWS region wisely

[< Prev](ADR-014-donation-platforms.md)  |  [Next >](README.md)

---

# 015 Pick AWS region wisely 

Date: 2022-06-18

## Status

Confirmed

## Context

We have US geo as one of the constraints, so we want to choose one of the AWS regions wisely in order to keep operation costs low.

We have the [unemployment rate stats](https://www.bls.gov/news.release/laus.nr0.htm) and [significant minorities stats](https://vividmaps.com/significant-racial-minorities-u-s-county/), which brought us a initial idea to choose the east coast regions. The [additional data](https://costofcollege.wordpress.com/2013/09/23/two-maps-showing-jobs-and-population-trends/) shows us that east has big potential for the local minorities who are the core audience for the Spotlight. West coast is already well developed so we can target this region later in an expansion phase.

We [took a look](https://www.concurrencylabs.com/blog/choose-your-aws-region-wisely/) on AWS region cost difference, and the most suitable for the POC phase can be North Virginia region. 

We also need to take in consideration the network latency for the west coast, since there is a part of our core audience as well. So another candidate with good cost/latency ratio is Oregon.

## Decision
We decided to pick Oregon as a optimal for the US territories in context of Spotlight.

## Consequences

**Positive:**

- Low latency for both coasts, East and West
- The price is relatively good

**Negative:**

- The most cheapest option can be North Carolina AWS region, we could bear with latency to the West coast.

**Risks:**

**Bonus Features:**

- In case we need to migrate our system into another region, the latency is optimal for both coasts.

---

[< Prev](ADR-014-donation-platforms.md)  |  [Next >](README.md)
