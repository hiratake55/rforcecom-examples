# Visualize opportunities by Lead Source as Decision Tree

# Install Packages
install.packages("rpart")
install.packages("rpart.plot")
library(rpart) 
library(rpart.plot) 

# Won
opportunityDF$Won = (opportunityDF$StageName=="Closed Won")

# Cast to Numeric
opportunityDF$Amount = as.numeric(as.character(opportunityDF$Amount))
opportunityDF$ExpectedRevenue = as.numeric(as.character(opportunityDF$ExpectedRevenue))

# Make Decision Tree
opportunity.rp <- rpart(Won ~ Type + ExpectedRevenue + Amount + LeadSource, data=opportunityDF, control=rpart.control(minsplit=2))
prp(opportunity.rp, type=4, extra=1)

