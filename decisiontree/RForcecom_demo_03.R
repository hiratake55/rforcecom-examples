# Get Opportunity list from Salesforce.com
objectName <- "Opportunity"
fields <- c("Name", "Amount", "StageName", "LeadSource", "Type", "ExpectedRevenue")
opportunityDF <- rforcecom.retrieve(session, objectName, fields)
head(opportunityDF)
