[> Home](../README.md)   [> Problem Background](README.md)
[< Prev](BusinessGoalsDriversAndRequirements.md)  |  [Next >](ActorsActionsAndSignificantScenarios.md)

---

# Architecture Analysis

## Key Architecture Characteristics



### Candidate Architecture Characteristics


### Selected Architecture Characteristics

| Top 3 | Characteristic | Source                                                       |
| ----- |--------------| ------------------------------------------------------------ |
| Y     | Simplicity   |  |

### Implicit Architecture Characteristics

The following are a bedrock of architecture characteristics. They may not affect the *structure* but will feed into the overall architecture.

- Feasibility (cost/time)
- Security, authentication and authorisation
- Maintainability

---

## Architectural Quanta

Of the characteristics identified above, do they apply to the whole system or are there clear sets applying to different parts of the system?

### Table View

| Identified Domains                                    | Sub-domains and Considerations                               | Applicable Architectural Characteristics                     | Strategic Domain |
| ----------------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ---------------- |
| Users                                                 | Customer, Preferences, Profile (Personal & Medical), Dietician, Clinic, Administrator?, Onboarding, Integration (Farmacy Foods) | - Interoperability (moved to Interface)<br />- Configurability<br />- Authorisation<br />- Workflow<br />- Fault-Tolerance<br />- Data-Integrity | Supportive       |
| Security                                              | Authentication, Authorisation                                | - Authorisation<br />- Data Integrity<br />-Interoperability (moved to Interface) | Generic          |
| Data Store                                            | Database, Interface                                          | - Data Integrity<br />- Authorisation                        | Generic          |
| Class (localised, temporal)                           |                                                              | - Configurability<br />- Fault Tolerance                     | Core             |
| Event (in-person, localised, temporal)                |                                                              | - Configurability<br />Fault Tolerance                       | Core             |
| Forum (localised, temporal)                           |                                                              | - Configurability<br />- Fault Tolerance                     | Core             |
| Reference Material / Media (global, reference/static) | Media Library, General Wellness                              | - Scalability/Elasticity                                     | Generic          |
| Analytics (geographical trend analysis)               | Geographical, Engagement?, Integration (Farmacy Foods), Reporting | - Fault Tolerance,<br />- Configurability<br />- Scalability/Elasticity<br />- Authorisation<br />-Data-Integrity | Core             |
| Messaging                                             | Email, Message, Notification, Subscription?                  | - Workflow                                                   | Supportive       |
| Medical                                               | Test, Result                                                 | - Authorisation<br />- Data-Integrity                        | Core             |
| Interface                                             |                                                              | - Interoperability<br />- Authorisation<br />- Data-Integrity | Supportive       |

### Venn Diagram


---

## System Granularity

A breakdown of the key granularity analysis and links to ADRs.

### Users

| Functionality | Volatility | Scalability             | Fault Tolerance                | Data Security | Data Transactions              | Data Dependencies            | Workflow             |
| ------------- | ---------- | ----------------------- | ------------------------------ | ------------- | ------------------------------ | ---------------------------- | -------------------- |
| Customer      | Low        | Unlikely to be required | Split required                 | 

[ADR: We-will-separate-the-user-domain](../4.ADRs/011-We-will-separate-the-user-domain.md)

### Security

| Functionality  | Volatility | Scalability             | Fault Tolerance                                              | Data Security | Data Transactions                                    | Data Dependencies | Workflow |
| -------------- | ---------- | ----------------------- | ------------------------------------------------------------ | ------------- | ---------------------------------------------------- | ----------------- | -------- |
| Authentication | Low        | Unlikely to be required | Don't want one without the other, could be merged with Authorisation | High          | User email/username, User password (hashed/salted)   | User              | Separate |
| Authorisation  | Low        | Unlikely to be required | Don't want one without the other, could be merged with Authentication | High          | User Roles / Permissions, User authentication status | User              | Separate |


### Community

| Functionality    | Volatility | Scalability  | Fault Tolerance                                              | Data Security | Data Transactions | Data Dependencies | Workflow                              |
| ---------------- | ---------- | ------------ | ------------------------------------------------------------ | ------------- | ----------------- | ----------------- | ------------------------------------- |
| Administer Forum | Medium     | Low usage    | Split required from customer functionality                   | High          | Forum             | Forum, Admin      | Similar to Administer Event and Class |



### Reference Material / Media 

| Functionality        | Volatility | Scalability  | Fault Tolerance                            | Data Security | Data Transactions | Data Dependencies | Workflow          |
| -------------------- | ---------- | ------------ | ------------------------------------------ | ------------- | ----------------- | ----------------- | ----------------- |
| Administer Media     | Medium     | Low usage    | Split required from customer functionality | Medium        | Media             | Media, Admin      | Separate          |
| View Available Media | Low        | Medium usage | Split required from admin functionality    | Low           | Media             | Media, Customer   | Similar to Access |
| Access Media         | Low        | Medium usage | Split required from admin functionality    | Low           | Media             | Media, Customer   | Similar to View   |


### Analytics 

| Functionality                  | Volatility | Scalability | Fault Tolerance                         | Data Security | Data Transactions  | Data Dependencies | Workflow |
| ------------------------------ | ---------- | ----------- | --------------------------------------- | ------------- | ------------------ | ----------------- | -------- |
| Run Analytics                  | High       | Required    | Should be split from Admin              | High          | MANY               | MANY              | Separate |
| Administer/Create Analytics    | High       | Required    | Should be split from Run & Store/Access | Medium        | Analytics Settings | MANY              | Separate |
| Store/Access Analytics Results | High       | Required    | Should be split from Admin              | High          | Analytics Storage  | Analytics Storage | Separate |



### Messaging

| Functionality             | Volatility | Scalability  | Fault Tolerance                                   | Data Security | Data Transactions                                            | Data Dependencies                         | Workflow |
| ------------------------- | ---------- | ------------ | ------------------------------------------------- | ------------- | ------------------------------------------------------------ | ----------------------------------------- | -------- |
| Notification              | Low        | Medium usage | Split required from Subscription                  | Low           | Notification (inc. status), Message status, Subscription event | User, Subscription, Message, Notification | Separate |
| Message                   | Low        | Medium usage | Split required from Subscription                  | High          | User Id, Message, Message Id                                 | User (Customer, Dietician), Message       | Separate |
| Email                     | Low        | Medium usage | Split required from Subscription                  | Medium        | User email address                                           | User                                      | Separate |
| Subscription (add/remove) | Medium     | Low usage    | Split required from Notification, Message & Email | Low           | User Id, Forum/Event/Class Id, Subscription                  | User, Forum, Event, Class, Subscription   | Separate |



### Data Store

See [Datastore Solution Overview](../2.SolutionBackground/DataStore.md).

---

## Integration points for Spotlight App

| System        | Direction           | Elements         | Reasoning                                                    | Managed Through                                              |
| ------------- | ------------------- | ---------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Diversity Cyber Council | 2-way               | Customer         |  | Interface, Authentication, Authorisation                     |


---

## Architectural Governance

Compliance with Architectural decisions and designs is as important as compliance with security and code structure best practices. The latter are typically monitored using automated testing, audits, code reviews, acceptance criteria and penetration tests. The former is often forgotten and not even included in the acceptance criteria in a user story.

### Fitness Functions

Architectural Fitness Functions will be implemented in the Farmacy Family system in order to govern compliance to architectural decisions and designs. Non-compliance will need to be fixed (or if there is good reason the decision recorder in an ADR and the Fitness Functions updated), in the same way as a failing test.

There are various options for implementing these functions, and either one option or a mixture could be optimal for this system. In AWS the following are some of the options to investigate:


---

## Next Steps:

- [x] Make decisions and record in ADRs about system granularity.
- [ ] Create diagrams of the granularity decided above.
- [ ] Investigate options for Fitness Functions.

---

[> Home](../README.md)   [> Problem Background](README.md)
[< Prev](BusinessGoalsDriversAndRequirements.md)  |  [Next >](ActorsActionsAndSignificantScenarios.md)
