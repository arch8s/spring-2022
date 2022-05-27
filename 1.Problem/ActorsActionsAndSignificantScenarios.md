[&gt; Home](../README.md)  [&gt; Problem Background](README.md)
[&lt; Prev](ArchitectureAnalysis.md)  |  [Next &gt;](ConstraintsAndAssumptions.md)

---

# Actors, Actions & Significant Scenarios

The Actors on the system (typically the human users but can also include other systems) and the actions they take
help to form the key scenarios, or flows of the system. The following identifies the significant actors, actions
and key scenarios that will inform the architecture of the Spotlight Platform system.

## Actors & Actions


| Actor            | Actions                                                                                               | Type       | NPO$ |
| ------------------ |-------------------------------------------------------------------------------------------------------| ------------ | ------ |
| Administrator    | • Register/Approve Non-profit organizations<br /><br />• Register/Approve NPO Registrator<br /><br /> | Admin      |      |
| ---              | ---                                                                                                   | ---        | ---  |
| NPO Registrator  | • Restister NPO<br />•                                                                                | Non-profit | Y    |
| Community Leader | • Assigned to NPO<br/><br />•                                                                         | Non-profit | Y    |
| Editor           | • Non-Profits to publicize offerings to the platform                                                  | Non-profit | Y    |
| Teacher          | •                                                                                                     | Non-profit | Y    |
| Mentor           | • Provide mentoring services                                                                          | Non-profit | Y    |
| ---              | ---                                                                                                   | ---        | ---  |
| Student          | • Register with platform<br/> • Platform match with educational offerings                             | Candidate  |      |
| Worker           | • Register with platform<br/> • Platform match with Mentorship/Career offerings                                | Candidate  |      |

$ Requires NPO many-to-one relationship

# Architecturally Significant Scenarios

### 01 Operational Process - Registration & Intake (Non-Profit)

Step 1 New Non-Profit registers on platform
Step 2 New Non-Profit completes community profile
Step 3 New Non-Profit completes service capabilities assessment
Step 4 Completion of profile and assesment automatically starts intake
Step 5 New Non-Profit assignment created
Operational Process - Mentor Assignment & Roadmap
Step 6 New Non-Profit assigned a community leader
Step 7 Email sent to new Non-Profit introducing community leader
Step 8 Introductory meeting is schedule within 1-2 weeks to discuss non profit service
capabilities, responsibilities, & expectations
Step 9 Regular cadence touchpoints scheduled between new non-profit and community leader
Step 10 Platform Role based training is assigned to new Non-Profit
Step 11 New Non-Profit is invited to monthly community meetings


### 02 Career Case Management Functionality & Process


### 03 Candidate Register with platform


### 04 Candidate matching to NPO offering


---

[&gt; Home](../README.md)  [&gt; Problem Background](README.md)
[&lt; Prev](ArchitectureAnalysis.md)  |  [Next &gt;](ConstraintsAndAssumptions.md)
