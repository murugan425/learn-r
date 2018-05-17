stats <- read.csv("demographic_data.csv")
stats

# is data frame check
is.data.frame(stats)
is.data.frame(stats[c(4,90),])
is.data.frame(stats[1,])
is.data.frame(stats[, "Birth.rate"])
is.matrix(stats[, "Birth.rate"])
is.vector(stats[, "Birth.rate"])
is.data.frame(stats[, "Birth.rate",drop=F])

# math Operations
stats$Birth.rate * stats$Internet.users
# add a new column by performing math operation on other columns
stats$MultipliedCol <- stats$Birth.rate * stats$Internet.users
stats
# remove a column
stats$MultipliedCol <- NULL
stats$Income.Group <- NULL
stats
# filtering
summary(stats)
stats$Internet.users
#Let's filter the countries with minimal internet users
filter <- stats$Internet.users < 2
stats[filter,]
stats[stats$Birth.rate > 40,]
stats[stats$Country.Name == c("India"),]
stats[stats$Country.Name == "China",]
#combining multiple filter
stats[stats$Birth.rate > 40 & stats$Internet.users < 2, ]

stats[stats$Income.Group == levels(stats$Income.Group)[1],]

