#c is function which accepts the dataset
vector_a <- c(10, 14, 18.76, 39.34)
is.numeric(vector_a)
is.integer(vector_a)
is.double(vector_a)

vector_b <- c(10L, 19L, 92233333L)
is.integer(vector_b)
is.double(vector_b)

vector_c <- c('a', 'murugan', "random", "anycharacter", 454)
#the integer will be converted into character automatically
is.character(vector_c)

vector_d <- c('a', 99, 33, 200.9, 454)
#even a single character in the dataset will convert all
#other inputs as characters, because vectors can have only same datatypes
is.integer(vector_d)
is.double(vector_d)
is.character(vector_d)

#sequence
1:15
seq(1, 15)
seq(1:15)
#Above all three statements works the same way.
#So Why seq then, because seq will allow another parameter called STEPS. 
seq(1, 50, 2)
seq(1, 10, 3)
seq(1, 100, 5)

#replicate
rep(4, 100)
rep("Murugan", 10)
rep(c(10L, 34L, 22L, 93L), 5)

alpha <- c('a', 'b', 'c', 'd', 'e', 'f', 'g')

#print the 2nd element
alpha[2]
#print everythin excpet 3rd element
alpha[-3]
#print the first three element
alpha[1:3]
#print few subsets of the available vector
alpha[4:7]
alpha[5:10] #any index value not available is NA
#print the 5th and 7th element
alpha[c(7,5)]
#don't print the 2nd, 4th, 6th elements
alpha[c(-2,-4,-6)]
#don't print the 2nd, 4th, 6th elements - another option
alpha[seq(1,7,2)]
#don't print the 2nd, 4th, 6th elements - another option
alpha[c(1,3,5,7)]
#don't print the middle three elements
alpha[-3:-5]
#try to print a 0th index - results NA , No zero index in R
alpha[0]

x <- rnorm(10)
x

n <- 100
vec_a <- rnorm(n)
vec_b <- rnorm(n)
#vector operations
#conventional/other programming array loops
for(i in 1:10) {
  print(x[i])
}

vec_d = rep(NA, n)
for(i in 1:n){
  vec_d[i] = vec_a[i] * vec_b[i]
}

#R specific programming vector loop
for(i in x) {
  print(i)
}

vec_r <- vec_a * vec_b
#The vector operations in R much much faster than the conventional approach
#Change the value of n to greater to realize the significant diff
#Reason1: The code is pretty simple and clean
#Reason2: In convention approach, the program has to tell the type 
#of the variables to the underlying JVM or Machine based language each
#and everytime while iterating in the loop, which is not required in 
#R specific approach, because, vectors will contain only one datatype &
#no need to specify it to the underlying language repeatedly which save time

#help for a function
?rnorm(2)
rnorm(n=5, mean=8, sd=2)
rnorm(n=5, sd=1, mean=2) 

seq(1, 10, by=2)
seq(1,20, length.out=25) #splits 1 to n into a desired length 25 

