Games
rownames(Games)
colnames(Games)
Games["KobeBryant", "2006"]

FieldGoals
Games
#No need to loop or iterate, just perform the operation directly on matrices.
#The only condition is both matrices should be of same size
round(FieldGoals/Games, 1) #Avg Goal per game
round(MinutesPlayed/Games) #Avg Minutes played per game
round(FieldGoals/FieldGoalAttempts,2) #Accuracy of a player to place a Goal

#matplot 
?matplot
FieldGoals
t(FieldGoals)
matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.001, legend=Players, horiz=F, pch=15:18, col=c(1:4,6))

#subsetting
Games
Games["JoeJohnson",]
#Games details of all the players in a specific year
Games[,"2013"]
#Recent 5 year Games of a specific player
Games["JoeJohnson", 6:10]
#First 3 players in the matrices and games only for the recent 5 years
Games[1:3, 6:10] 
#First & Last Player in the matrices
Games[c(1,10),]
#Game Details of two different years
Games[,c("2008", "2014")]

#The output of subsetting does not needs to be a matrix always, it can be a vector too
is.matrix(Games["JoeJohnson",])
is.vector(Games["JoeJohnson",])
is.matrix(Games["JoeJohnson","2008"])
is.vector(Games["JoeJohnson","2008"])
is.matrix(Games[1:25])
is.vector(Games[1:25])

#Now to change this behavior and get a consistent output to return matrices always
#With drop attribute set as False, the extra additional dimension will not be dropped by R
Games["JoeJohnson",,drop=F] 
Games["JoeJohnson","2008", drop=F]
matplot(t(MinutesPlayed), type="b", pch=15:18, col=c(1:4,6))
matplot(t(MinutesPlayed[1:5,]), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.001, legend=Players[1:5], horiz=F, pch=15:18, col=c(1:4,6))
matplot(t(MinutesPlayed[1,,drop=F]), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.001, legend=Players[1], horiz=F, pch=15:18, col=c(1:4,6))

#Function
#By default 10 players data will be presented as we set players=1:10
matrixplot <- function(data, players=1:10) {
  matplot(t(data[players,,drop=F]), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.001, legend=Players[players], horiz=F, pch=15:18, col=c(1:4,6))
}

matrixplot(MinutesPlayed, c(1:5))
matrixplot(Salary, c(1:5))
matrixplot(Salary)


