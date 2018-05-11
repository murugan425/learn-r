#while
i <- 1
while (i < 6) {
  print(i)
  i <- i+1
}
#be cautious to close all the opened braces

#for
for(i in 1:100) {
  print(i)
}

#if
# -3 -2 -1 0 1 2 3 #
if(TRUE) {
  print("Condition satisfied")
}

#rnorm(100, 0, 1)
#x = rnorm(1, 0, 0.1)
x <- rnorm(1)
if(x>1) {
  ans = "X is greater than 1"
} else { 
  if(x >= -1) {
    ans = "X is between 1 & -1" 
  }
  else {
    ans = "X is less than -1"
    #the more we try this, the chances are high for this output 
    #to be exact 68.2% possibility based on normal distribution
  }
}

