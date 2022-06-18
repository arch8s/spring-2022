
[> Home](../README.md) [> ADRs](README.md) > **ADR-015** Pick AWS region wisely

[< Prev](ADR-014-donation-platforms.md)  |  [Next >](README.md)

---

# 015 Pick AWS region wisely 

Date: 2022-06-18

## Status

Confirmed

## Context

We have US geo as one of the constraints, so we want to choose one of the AWS regions wisely to keep operation costs low.

We have the [unemployment rate stats](https://www.bls.gov/news.release/laus.nr0.htm) and [significant minorities stats](https://vividmaps.com/significant-racial-minorities-u-s-county/), which brought us an initial idea to choose the east coast regions. The [additional data](https://costofcollege.wordpress.com/2013/09/23/two-maps-showing-jobs-and-population-trends/) shows us that the east has considerable potential for the locals who are the core of audience for the Spotlight. 

We [took a look](https://www.concurrencylabs.com/blog/choose-your-aws-region-wisely/) on AWS region cost difference, and the most suitable for the PoC phase can be the North Virginia region. 

We also need to consider the network latency for the west coast since there is a part of our core audience as well. So another candidate with a reasonable cost/latency ratio is Oregon.

## Decision
We decided to pick Oregon as optimal for the US territories in the context of Spotlight.

## Consequences

**Positive:**

- Low latency for both coasts, East and West
- The price is relatively good

**Negative:**

- The cheapest option can be North Carolina AWS region. We could bear with latency to the West coast.

**Risks:**

**Bonus Features:**

- If we need to migrate our system into another region, the latency is optimal for both coasts.

---

[< Prev](ADR-014-donation-platforms.md)  |  [Next >](README.md)
