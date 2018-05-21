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

#Approach1: Layer 1 is defined with the data & Aesthetics
plot <- ggplot(data=movies, aes(x=AudienceRating))
plot + geom_histogram(binwidth = 10, fill='White', color="blue")

plot <- ggplot(data=movies, aes(x=CriticRating))
plot + geom_histogram(binwidth = 10, fill='White', color="blue")

#Approach2: Layer 1 is defined with the data & Layer 2 ia having the Aesthetics
plot <- ggplot(data=movies)
plot + geom_histogram(binwidth = 10, aes(x=AudienceRating), fill='White', color="blue")
plot + geom_histogram(binwidth = 10, aes(x=CriticRating), fill='White', color="blue")

#Smoother Charts
#Statistical Transformations
plot <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
plot + geom_point()
plot + geom_point() + geom_smooth(fill=NA)

plot <- ggplot(data=movies[movies$Genre == 'Romance',], aes(x=CriticRating, y=AudienceRating, color=Genre))
plot + geom_point() + geom_smooth(fill=NA)
nrow(movies[movies$Genre == 'Romance',])

plotByGenre <- function(movieGenre) {
  nrow(movies[movies$Genre == movieGenre,])
  plot <- ggplot(data=movies[movies$Genre == movieGenre,], aes(x=CriticRating, y=AudienceRating, color=Genre))
  plot + geom_point() + geom_smooth(fill=NA)
}

plotByGenre("Romance")
plotByGenre("Action")

#Boxplot Charts
plot <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, color=Genre))
plot + geom_boxplot()
plot + geom_boxplot(size=0.5) + geom_jitter()
plot + geom_jitter() + geom_boxplot(size=1, alpha=0.5) 

plot <- ggplot(data=movies, aes(x=Genre, y=CriticRating, color=Genre))
plot + geom_jitter() + geom_boxplot(size=1, alpha=0.5)

#Facets
plot <- ggplot(data=movies, aes(x=Budget))
plot + geom_histogram(binwidth = 10, aes(fill=Genre), color="black")

histchart <- plot + geom_histogram(binwidth = 10, aes(fill=Genre), color="black")
histchart

histchart + facet_grid(Genre~.)
histchart + facet_grid(Genre~., scales = 'free')

plot <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
scatter_plot <- plot + geom_point(size=2)
scatter_plot <- plot + geom_point(aes(size=Budget))

scatter_plot + facet_grid(Genre~.)
scatter_plot + facet_grid(.~Year)
scatter_plot + facet_grid(Genre~Year, scales = 'free')

scatter_plot + geom_smooth(fill=NA) + facet_grid(Genre~Year, scales = 'free')

#Co-ordinates
plot <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, size=Budget, color=Genre))
plot + geom_point()
plot + geom_point() + xlim(50,100) + ylim(50,100) 
#xlim & ylim will remove the data which is outside the coordinates, 
#so this may not work out in case of histograms where we may need to zoom without filtering the data
plot <- ggplot(data=movies, aes(x=Budget))
histchart <- plot + geom_histogram(binwidth = 8, aes(fill=Genre), color='black')
histchart + xlim(0,50) + ylim(0,50) #wrong - result is not as expected.
histchart + coord_cartesian(xlim= c(0,50), ylim=c(0,50))

scatter_plot + geom_smooth(fill=NA) + 
  facet_grid(Genre~Year, scales = 'free') +
  coord_cartesian(ylim=c(0,100))


