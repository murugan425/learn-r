matrixplot <- function(data, players=1:10) {
  matplot(t(data[players,,drop=F]), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[players], horiz=F, pch=15:18, col=c(1:4,6))
}

?legend
#Salary
matrixplot(Salary)
matrixplot(Salary/Games)
matrixplot(Salary/FieldGoals)

#In-Game Metrics
matrixplot(MinutesPlayed)
matrixplot(Points)

#In-Game Metrics Normalized
matrixplot(FieldGoals/Games)
matrixplot(FieldGoals/FieldGoalAttempts)
matrixplot(FieldGoalAttempts/Games)
matrixplot(Points/Games)

#Other Observations
matrixplot(MinutesPlayed/Games)
matrixplot(Games)
matrixplot(FieldGoals/MinutesPlayed)
matrixplot(Points/FieldGoals)

#Assignments:
matrixplot(FreeThrowAttempts/Games)
matrixplot(FreeThrows/FreeThrowAttempts)
matrixplot(Points/FieldGoals)
matrixplot((Points-FreeThrows)/FieldGoals)

v1 <- c(1, 22, 33)
v2 <- c("Hi", "there", "friend")
v3 <- c(11, 3, 2016)
D <- cbind(v1,v2,v3)
D[3,2]

f <- function(vector=1:3){
  vector * 5
}
f() + f(c(1,1,1))


