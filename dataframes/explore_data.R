# Exploring Data
stats <- read.csv("demographic_data.csv")
stats

nrow(stats) #number of rows
ncol(stats) #number of colummns
nrow(stats) #number of rows
head(stats) #first few rows of dat 
tail(stats) #last few rows of data
str(stats) #structure of the data
summary(stats) #Provides a brief summary or range of a data at each column level

# Using the $ sign
stats
# Accessing elements in datafra
stats[3, 1]
stats[3, 4]
stats[c(4,90),]
stats["5", "Country.Name"]
stats[, "Birth.rate"]

# Now, accessing elements in Dataframes using $ sign
stats$Birth.rate[3] #Equivalent to stats[, "Birth.rate"]
stats$Country.Name[5]
levels(stats$Income.Group)

