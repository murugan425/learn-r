#Grammer of Graphics

setwd("D:/REPO/learn-r/visualization")
movies <- read.csv("movie_ratings.csv")
movies

#Factors are the data objects which are used to categorize the data and store it as levels.
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "Budget", "Year")
summary(movies)
str(movies)
#by default R applies Factors for character columns, 
#and for numeric column we can convert them as factor as shown below
movies$Year <- factor(movies$Year)
str(movies)

##################################################
#AESTHETICS
#1: Headstart to ggplot by providing data and deciding the Aesthetics
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

#2: Decide the geometry then add color and size for the data
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
       color=Genre, size=Budget)) +  
  geom_point()

##################################################
#GEOMETRY
#3: Adding multiple geometry layers
plot <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                                color=Genre, size=Budget))

plot + geom_line()
plot + geom_point()
plot + geom_line() + geom_point()

#overriding aesthetics params

plot + geom_point(aes(color=Budget))

plot + geom_point(aes(x=Budget)) + xlab("Budget")

plot + geom_line(size=1) + geom_point()

##################################################
#Mapping vs Setting
#Mapping: mapping a aesthetic value based on variable
#Setting: set a value say "Green" directly to a input attribute of ggplot
plot + geom_point(aes(size=Budget))

plot + geom_point(size=10)

##################################################
#Histogram Charts
plot <- ggplot(data=movies, aes(x=Budget))
plot + geom_histogram(binwidth = 5)

#fill the blocks with colors
plot + geom_histogram(binwidth = 8, aes(fill=Genre))

#add a border
plot + geom_histogram(binwidth = 8, aes(fill=Genre), color="black")

#Density Charts
plot + geom_density()

plot + geom_density(aes(fill=Genre))

plot + geom_density(aes(fill=Genre), position = 'stack')

##################################################

