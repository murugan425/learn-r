"Hello World of R"

mydata <- read.csv(file.choose())
# import the Misplaced-Diamonds.csv as a sample dataset for this.
install.packages("ggplot2")

ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price, colour=clarity)) +
  geom_point(alpha=0.1) +
  geom_smooth()
      