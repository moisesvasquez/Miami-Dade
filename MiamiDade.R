#library(httr)
#api <- function(path) {
#  url <- modify_url("https://opendata.arcgis.com/datasets/e1b74e88e203458b8a3b5c93f0ea68a1_0.geojson", path = path)
#  GET(url)
#}
#resp <- api("/repos/hadley/httr")
#resp
setwd("~/Documents/R/Miami-Dade")
Use <- read.csv("Certificates_of_Use_Issued_by_MiamiDade_County__Jan_2003_to_present.csv")
Occupancy <- read.csv("Certificate_of_Occupancy.csv")