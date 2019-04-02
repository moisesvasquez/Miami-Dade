#library(httr)
#api <- function(path) {
#  url <- modify_url("https://opendata.arcgis.com/datasets/e1b74e88e203458b8a3b5c93f0ea68a1_0.geojson", path = path)
#  GET(url)
#}
#resp <- api("/repos/hadley/httr")
#resp
#How can we equally proportion residential and commercial use of Miami-Dade?
#Which areas of Miami-Dade should have a more porportionate distribution of residential and commercial use?
setwd("~/Documents/R/Miami-Dade")
Use <- read.csv("Certificates_of_Use_Issued_by_MiamiDade_County__Jan_2003_to_present.csv")
Occupancy <- read.csv("Certificate_of_Occupancy.csv")
Use$Value <- 1
Occupancy$Value <- 1
Use$YEAR <- substr(Use$CertOccIssueDate, start = 1, stop = 4)
Occupancy$YEAR <- substr(Occupancy$ISSUE_DATE, start = 1, stop = 4)
AggUse <- data.frame(aggregate(list(Count = Use$Value), 
                               by=list(Year = Use$YEAR),
                               FUN = sum))
AggOccupancy <- data.frame(aggregate(list(Count = Occupancy$Value), 
                               by=list(Year = Occupancy$YEAR),
                               FUN = sum))
plot(AggOccupancy)