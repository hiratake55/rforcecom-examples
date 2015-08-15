# Get Opportunity list from Salesforce.com (using SOQL)
query <- "SELECT Name, Amount, StageName FROM Opportunity WHERE StageName='Closed Won'"
opportunityWonDF <- rforcecom.query(session, query)
head(opportunityWonDF)
