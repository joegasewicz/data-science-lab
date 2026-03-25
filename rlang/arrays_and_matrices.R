# Arrays & Matrices

x <- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
x
#      [,1] [,2]
# [1,]    1    3
# [2,]    2    4
dim(x) # get dimensions of the matrice # [1] 2 2
x[1] # [1] 1
x[2] # [1] 2
x[3] # [1] 3

x[2, 1] # 2nd row, first column

y <- matrix(nrow = 2, ncol = 2)
y
#      [,1] [,2]
# [1,]   NA   NA
# [2,]   NA   NA

# R fills in columns first (all the way down the 1st columns , then 2nd etc...
y[1:4] <- c(1,2)
y
#      [,1] [,2]
# [1,]    1    1
# [2,]    2    2

d <- matrix(nrow = 6, ncol = 6)
d[7:12] <- c(1,2,3,4,5,6)
d
#      [,1] [,2] [,3] [,4] [,5] [,6]
# [1,]   NA    1   NA   NA   NA   NA
# [2,]   NA    2   NA   NA   NA   NA
# [3,]   NA    3   NA   NA   NA   NA
# [4,]   NA    4   NA   NA   NA   NA
# [5,]   NA    5   NA   NA   NA   NA
# [6,]   NA    6   NA   NA   NA   NA

# create and add values BY ROW (not columns!)
z = matrix(c(1,2,3,4,5,6), nrow = 2, byrow = T)
# OR
z = matrix(seq(1, 6), nrow = 2, byrow = T)
z
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6

# matric maths operations
x <- matrix(seq(1, 4), nrow = 2, byrow = T)
x



x + c(1,2)
#      [,1] [,2]
# [1,]    2    3
# [2,]    5    6

x + x
#      [,1] [,2]
# [1,]    2    4
# [2,]    6    8

# matric multiplication
x <- matrix(c(1, 2, 3, 4), nrow = 2, byrow = T)
y <- matrix(c(1, 2, 3, 4), nrow = 2, byrow = T)
x
y
x %*% y
# > x
#      [,1] [,2]
# [1,]    1    2
# [2,]    3    4
# > y
#      [,1] [,2]
# [1,]    1    2
# [2,]    3    4
# > x %*% y
#      [,1] [,2]
# [1,]    7   10
# [2,]   15   22

# matrices are vectors with row and column attributes
x <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, byrow = T)
x
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
attributes(x) # - has dimensions 2 2
# $dim
# [1] 2 2
length(x) # 6
x[4] # 5 - retrieves index by columns (even with byrow = T)

z <- c(z)
attributes(z) # NULL - only for matrix
z # [1] 1 4 2 5 3 6

# adding rows & columns to matrices
cbind(x, c(100, 100)) # column bind (adds a new columns with 2 values)
#      [,1] [,2] [,3] [,4]
# [1,]    1    2    3  100
# [2,]    4    5    6  100

rbind(x, c(100, 100)) # row bind  (adds a new row)
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]  100  100  100
x <- matrix(c(1, 2), nrow = 2, byrow = T)
rbind(x, c(100, 100, 100)) # recycling - wont add the last 2 100 values.

# arrays (matrices with more than 2 dimensions)
a <- array(seq(1, 18), dim = c(2, 3, 3))
a