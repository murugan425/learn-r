setwd("D:/REPO/learn-r/visualization")
movies <- read.csv("movie_gross.csv")
movies

head(movies)
summary(movies)
str(movies)
colnames(movies) <- c("DayOfWeek", "Director", "Genre", "Title", "ReleaseDate", "Studio",
                      "AdjustedGross","Budget","Gross", "ImdbRating", "MovieLensRating", "OverseasGross",
                      "Overseas%", "Profit", "Profit%", "Runtime", "USGross", "USGrossPercent")

genre_filter <- movies$Genre == "action" | movies$Genre == "adventure" | movies$Genre == "animation" | movies$Genre == "comedy" | movies$Genre == "drama"
studio_filter <- movies$Studio == "Buena Vista Studios" | movies$Studio == "Fox" | movies$Studio == "Paramount Pictures" | movies$Studio == "Sony" | movies$Studio == "Universal" | movies$Studio == "WB"

#alternate way
studio_filter <- movies$Studio %in% c("Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB")

nrow(movies[genre_filter & studio_filter,])
filteredmovies = movies[genre_filter & studio_filter,]

plot <- ggplot(data=filteredmovies, aes(x=Genre, y=USGrossPercent))
jitter_boxplot <- plot + geom_jitter(aes(color=Studio, size=Budget)) + geom_boxplot(alpha=0.6, outlier.color = NA)

plot_titled <-  jitter_boxplot + xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")

plot_titled$labels$size = "Budeget $M"
plot_themed <- plot_titled + 
  theme(
    axis.title.x = element_text(colour = "Blue", size = 20),
    axis.title.y = element_text(colour = "Blue", size = 20),
    axis.text.x = element_text(size=20),
    axis.text.y = element_text(size=20),
    legend.title = element_text(size=20),
    legend.text = element_text(size=15),
    plot.title = element_text(size=30),
    text = element_text(family = "Comic Sans MS"),
  )

 





