# Advanced Matices Indexing

z <- matrix(c(1, 2, 3, 4, 5, 6) ,  nrow = 2, byrow = T)
z
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# using colons & negatives
# name[rows, columns]
z[,2:3] # get 2nd through 3rd column
#      [,1] [,2]
# [1,]    2    3
# [2,]    5    6
z[-1,] # everything except the first row
z[, -2] # everything excpt the 2nd column

# using dim to index in matix when you don't know the size
dim(z) # 2, 3
z[dim(z)[1], dim(z)[2]]
# [1] 6

# exercise #1
m <- matrix(c(1:10), nrow = 2)
m
m[1:2, 2:3]
m[2, 3:5]

m <- matrix(c(1:10), nrow = 2, byrow = T)
m
dim(m)
m[1:2, -2]

# exercize #2
a = array(c(1:18), dim = c(2, 3, 3))
a
a[2, 2:3 ,2]
tmp <- a[1:2, 1:2, 3] # log out a vector
c(tmp[1, ], tmp[2,])
t(tmp)
c(t(tmp))