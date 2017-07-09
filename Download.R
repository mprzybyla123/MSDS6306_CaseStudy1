##############################
# Download GDP and Income data from World Bank Website
# Austin Hancock - Ernesto Carrera - Matthew Przybyla
# Updated 9 July 2017
#############################




# Update the working directory to run this code in local machine
setwd("C:/git_repositories/MSDS6306_CaseStudy1")
# Load package
library(downloader)

# Download the info. to local machine
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile="GDP.csv")




###############################
## Download Education. File - with information regarding the income 

# Download the information to local machine
download("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv ",destfile="Education.csv")




