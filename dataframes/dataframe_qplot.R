# Introduciton to qplot
install.packages("ggplot2")
library(ggplot2)

?ggplot2
?qplot

summary(stats)
str(stats)

#Basic chart of a column
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Birth.rate)
qplot(data=stats, x=Income.Group)

#Relation between Internet users, Birth Rate & Income Group
qplot(data=stats, x=Internet.users)

qplot(data=stats, x=Internet.users, y=Income.Group, size=I(2), color= "red")
#We can see income is directly proportional to the internet users count
qplot(data=stats, x=Birth.rate, y=Income.Group)
#We can see income is impacted if the birth rate is high
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot")

#Visualizing in a better way to get insights
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(2), color=I("red"))

#Apply different colors based on differnt income groups
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(2), color=Income.Group)

qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(2), color=Income.Group)
