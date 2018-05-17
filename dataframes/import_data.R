?read.csv

#import the file manually
data <- read.csv(file.choose())
data

#import the file from a specific path programmatically
getwd()
#Mac
setwd("/Users/REPO/learn-r/dataframes")
#Windows
setwd("D:/REPO/learn-r/dataframes")
stats <- read.csv("demographic_data.csv")
stats

