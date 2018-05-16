#matrix
vec_a <- 1:20

#breaks the vector by Column as default
matrix_a <- matrix(vec_a, 4, 5)
matrix_a
matrix_a[2,3]
#breaks the vector by Row
matrix_b <- matrix(vec_a, 5, 4, byrow=T)
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

#naming vector elements
vector.data <- c(100, 200, 333, 4444, 55555, 6666)
#no name assigned - it will be null
vector.data
names(vector.data)
#lets assign a name to the elements in the above vector
names(vector.data) <- c("alpha","beta",'gamma', "delta", 'z', 126440)
#names are assigned now
names(vector.data)
#accessing the element using names
vector.data["126440"]
vector.data["delta"]

#clear the assigned names
names(vector.data) <- NULL

#naming matrices
vec.a <- rep(c("Murugan", "Tamil", "Teju"), each=4)
vec.a
mat.a <- matrix(vec.a, 3, 4, byrow=T)
rownames(mat.a) <- c("Father", "Mother", "Child")
colnames(mat.a) <- c("Fam1", "Fam2", "Fam3", "Fam4")
mat.a
mat.a["Mother", "Fam3"]


vec.a <- c("Murugan", "Tamil", "Teju", "XXX", "YYY", "ZZZ", "AAA", "BBB", "CCC", 11, 22, 33)
vec.a
mat.a <- matrix(vec.a, 4, 3, byrow=T)
mat.a
rownames(mat.a) <- c("Fam1", "Fam2", "Fam3", "Fam4")
colnames(mat.a) <- c("Father", "Mother", "Child")
mat.a
mat.a["Fam3", "Child"]
