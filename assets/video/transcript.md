S1:
Hello everyone, we are Arch8s. Today we’re happy to present our Spotlight solution for this season O’Reilly Architectural Katas!

S2:
N: Hi, Nova here. I've been working in a support center since 2017 and I don’t enjoy it. I want to change my job and gain a career. I'm looking for help becoming a junior SRE and all my Google searches gave me no real answer. I am lost.

M: Hi, I'm Max. I do volunteering for FoxOverDogs Foundation. With over 20 years experience in IT management and directorship, I’ve been lucky enough to use my knowledge to help others transition into new technical careers.

S3:
Spotlight comes as a relief to the pains Nova experienced alone as well as helping Max to reach more candidates.

Spotlight provides automated mentor matching. We match as many traits between candidates and mentors to find the best match. 

For candidates:
Certified mentors
Career roadmaps
Visual progress

For non-profits and mentors:
Networking
Audience growth
Partnerships
Analytics and reporting

S4:
According to the National Center for Charitable Statistics (NCCS)

Almost eleven million people looked for a job in 2020 in the United States. 

One hundred and eighty million were interested in online courses.

Yet on the other hand, there were one and a half million registered non-profit organizations, and a quarter of the citizens volunteered at least once for any of them.

S5:
Our Spotlight platform brings effective collaboration between non-profits and candidates.

For candidates looking for career advice:

Coaching, 
Weekly Spotlives,
Challenges,
Mentor Matching and
Career Roadmap 

For non-profits:

Networking,
Forums,
Collaboration,
New partnerships and 
Improved visibility

S6:
We identified the following roles within our Spotlight app:
A visitor is an unauthorized actor who can browse communities, events, etc
A candidate is a registered user, who decide to change their career
NPO admin acts on behalf of an NPO in the platform and defines their list of offered services
Mentor - is a volunteer who supports candidates with mentorship and career advice 
Community Leader - onboards NPOs, and facilitates regular meetings with NPOs

S7:
This represents the system functionality and requirements we identified to enable Spotlight to work effectively.

Every action is recorded as a user story in our repository.

S8:
Based on Business requirement analysis we identified three key characteristics for our architecture.

Cost - Diversity Cyber Council has a limited budget,

Scalability - since we focus on open online courses, our research has shown 180 million potential visitors

Simplicity - we are working on diversity, so we can reach a larger audience

S9:
Using Architectural Styles Worksheet by Mark Richard from DeveloperToArchitect.com, we highlighted the identified key characteristics. And as you can see the two most suitable options are modular monolith or microkernel.

S10:
We decided to use a modular monolith architecture style. 
Because of the startup nature of our project, the scope could change dramatically during the Proof Of Concept phase. 
We want to be able to scale some parts of the system to effectively use resources, 
so we need to keep modules isolated from each other. 
You can get more information this decision from ADR-007.

S11:
C4 stands for Context, Container, Component and Code.

The System Context diagram shows how the Spotlight fits into Diversity Cyber Council.

On top, you see all actors and their responsibilities.

In the middle we have our Spotlight system.

At the bottom we have all the external services our Spotlight system uses.

S12:
Here we see a Container diagram which provides deeper view into the scope of our Spotlight system, showing our high-level technical building blocks.

S13:
This overview shows how data passes between different contexts of our Spotlight system.

We’ve highlighted the most important components, which are the working parts in our proof of concept.

For example let's discuss the engagement context

S14:
It contains five modules. They are responsible for retaining users on our platform. 

The contests module encapsulates all the gamification logic for challenges, capture the flags and hackathons. 

The meetings module provides functionality to organize calls and meetings between all platform actors.

The messengers' module integrates with all popular social messengers, allowing in-app interaction.

The notifications module is responsible for the pushes and email notifications for the actors of the platform.

The bragging module enables sharing achievements, trophies and badges through social media.

S15:
This component diagram shows how the mentor interacts with the candidate, and vice versa, through the Spotlight modules

S16:
We want to scale Spotlight without spending too much time and resources, so we took the decision to deploy our system using AWS cloud.

Based on ADR-006 Zero-trust service communication security model, we split our deployment into three security groups. This isolates and minimizes the attack surface in case of an unlikely data breach.

The dedicated API gateway hides the two different API’s, the monolith scaling group and the Serverless data processing pipeline.

Both of them scale well:
 Monolith scales using auto-scaling groups in Elastic Container Service.
 And Serverless uses AWS Lambda with Kinesis Data Firehose. 

This deployment can handle any load spikes easily.

S17:
This roadmap outlines our expected project timeline, once confirmation from real business owners and stakeholders is aligned. 

To minimize waste, we’ve planned several Proof of Concept sprints. 
Including from the start, progressive real user UI/UX testing to ensure the interface matches the project requirements.

S18:
Let's improve diversity in IT with team Arch8s! Thanks to O'Reilly and the organisers for this excellent opportunity!
