#matrix
vec_a <- 1:25

#breaks the vector by Column as default
matrix_a <- matrix(vec_a, 5, 5)
matrix_a
matrix_a[2,3]
#breaks the vector by Row
matrix_b <- matrix(vec_a, 5, 5, byrow=T)
matrix_b

w <- c('a', 'b', "c")
x <- c(43,77,55, 00)
y <- c(84, 38, 10, 30)
z = c(98, 89, 78, 65)

#rbind
matrix_c <- rbind(w,x,y,z)
matrix_c
#cbind
matrix_d = cbind(x, y, z)
matrix_d
#access matrix elements
matrix_d[,3]
matrix_d[2,]
matrix_d[1,3]


