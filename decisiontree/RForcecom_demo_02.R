# Sign in to Salesforce.com
username <- "<FILL YOUR EMAIL>"
password <- "<FILL YOUR PASSWORD AND TOKEN>"
instanceURL <- "https://<FILL YOUR INSTANCE>.salesforce.com/"
apiVersion <- "34.0"
(session<-rforcecom.login(username, password, instanceURL, apiVersion))
