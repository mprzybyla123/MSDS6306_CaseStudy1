##############################
# Cleaning GDP and Income data from World Bank Website
# Austin Hancock - Ernesto Carrera - Matthew Przybyla
# Updated 9 July 2017
#############################



# Update the working directory to run this code in local machine
setwd("C:/git_repositories/MSDS6306_CaseStudy1")

###### Cleaning GDP data
# Remove first 5 lines, limit rows to only return countries
GDP <- read.csv("GDP.csv" 
                ,header=FALSE
                ,sep=','
                ,quote = "\""
                ,stringsAsFactors=FALSE
                , skip=5
                , nrows=215)


# Remove empty columns
GDP <- GDP[-c(3,7,8,9,10)]

# Create column headers
names(GDP) <- c("CountryCode","Rank","Economy","GDP (millions of US dollars)","Note")

# Remove blank rows - a row without a CountryCode is blank
GDP <- GDP[(GDP$CountryCode != ""),]

# Convert GDP columns from char to numeric so we can sort
GDP$`GDP (millions of US dollars)` <- gsub(",", "", GDP$`GDP (millions of US dollars)`)
GDP$`GDP (millions of US dollars)` <- suppressWarnings(as.numeric(GDP$`GDP (millions of US dollars)`))



###### Cleaning Education Data

Educ <- read.csv("Education.csv"
                 , header=TRUE
                 , sep=','
                 , quote="\""
                 , stringsAsFactors=FALSE
                 , check.names=FALSE)

# Remove rows where Income Group is blank - these are not countries
Educ <- Educ[(Educ$`Income Group` != ""),]