#keep changing the value of n from 1 to 10000 to verify the lln
n <- 1000
counter <- 0
for(i in rnorm(n)) {
  if(i < 1 & i > -1) {
    counter <- counter +1
  }
}
exp_x = (counter / n ) * 100
counter
exp_x