workspace {

    model {
        communityLeader = person "Community Leader" " " "Community Leader"
        npoAdmin = person "NPO Admin"
        npoMentor = person "Mentor"
        candidate = person "Candidate"

        enterprise "Digital Council" {



            matcherService = softwareSystem "Matches Candidates to NPOs"

            assessmentService = softwareSystem "Assesses NPOs and Candidates"

            spotlightPlatform = softwareSystem "Spotlight Platform" {
                spa = container "Single Page Application" {
                    communityLeader -> this "Supports and Reviews NPOs"
                    npoAdmin -> this "Register NPO, publish content, manages mentors"
                }

                mobileapp = container "Mobile Application" {
                    npoMentor -> this "Supports Candidates, setup Career Roadmaps ..."
                    candidate -> this "Applies for and consumes services"
                }

                api = container "Spotlight API" {
                    mobileapp -> this "request"
                    spa -> this "request"
                }
                database = container "Database" {
                    api -> this "Reads from and writes to"
                }

                npo = container "NPO" {
                    npoAssessments = component "NPO Assessments"
                    volunteerAssessments = component "Volunteer Assessments"  "Manages assessments for candidates"
                    npoRecommendations = component "NPO recommendations"  ""
                    npoServices = component "NPO services" ""
                    MentorSearch = component "Mentor Search" ""
                }
                community = container "Community" {
                    communities = component "Communities"  ""
                    communityLeaders = component "Community Leaders"  ""
                    events = component "Events"  "Manages events (weekly spotlights, masterminds, AMA session"
                    ratings = component "Ratings"  ""
                    taxonomy = component "Taxonomy"  ""
                    profanity = component "Profanity checks"  ""
                }
                engagement = container "Engagement" {
                    Contests = component "Contests"  ""
                    Meetings = component "Meetings"  ""
                    Messengers = component "Messengers"  ""
                    Notifications = component "Notifications"  ""
                    Bragging = component "Bragging"  ""
                }
                documentExchange = container "Document Exchange" {
                    documentRendering = component "Document rendering"  ""
                    documentParsing = component "Document parsing"  ""
                    aecureDocumentStorage = component "Secure Document Storage"  ""
                }
                reportingContainer = container "Reporting" {
                    reportingComponent = component "Reporting"  ""
                    analytics = component "Analytics"  ""
                    tracking = component "Tracking"  ""
                }
                candidateContainer = container "Candidate" {
                    candidates = component "Candidates"  ""
                    roadmaps = component "Roadmaps"  ""
                    candidateAssessments = component "Candidate Assessments"  ""
                }

                externalServices = container "External services" {
                    headlessCMS = component "Headless CMS"  ""
                    googleAI = component "Google Calendar API"  ""
                    communityAPI = component "Community API"  ""
                }


            }
        }

        # relationships between people and software systems
        # communityLeader -> spotlightPlatform "Does screening NPOs, helps NPOs"
        # npoAdmin -> spotlightPlatform "Register NPO, publish content, manages mentors"

    }

    views {


        systemContext spotlightPlatform {
            include *
            # autolayout lr
        }

        container spotlightPlatform {
            include *
            # autolayout lr
        }

        theme default

        styles {
           element Database {
                shape Cylinder
            }
        }
    }
}
