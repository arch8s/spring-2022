[&gt; Home](../README.md) [&gt; ADRs](README.md) > **ADR-016** Browser support - Most popular 4 browsers

[&lt; Prev](ADR-015-pick-aws-region-wisely.md)  |  [Next &gt;](ADR-017-community-component-disciple.md)

---

# 016 Browser support - Most popular 4 browsers

Date: 2022-06-18

## Status

Confirmed

## Context

Browser support is a big problem for web developer. Especially when using some framework.

To be able to provide diverse services across whole USA we need to provide Multi-Browser support.

[Most popular Most Popular Browsers in the United States]
(https://gs.statcounter.com/browser-market-share/all/united-states-of-america):

| Browser          | US %   |
| ---------------- | ------ |
| Google Chrome    | 48.6%  |
| Safari           | 35.35% |
| Microsoft Edge   | 5.72%  |
| Mozilla Firefox  | 3.48%  |
| IE               | 1.98%  |
| Samsung Internet | 1.87%  |


Due to limited budged and small team size we need to choose only small set of browsers.


## Decision

We decided to will support top 4 most popular browsers, this will give us high browser share coverage within US.

## Consequences

**Positive:**
---------
- Reduce development time 
- Minimize testing effort
- 93.15% majority browsers share coverage
- 100% HTML elements and attributes

**Negative:**
---------
- 6.85% of our user could experience some minor issues, which can be easily overcome by switching to a top popular browser.

**Risks:**
- We might lose small minority of users if certain, which are not using most popular browsers 

**Bonus Features:**


---

[&lt; Prev](ADR-015-pick-aws-region-wisely.md)  |  [Next &gt;](README.md)
