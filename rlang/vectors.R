# Vectors
# Vectors can only store a single variable mode

w <- c(11, 12, 13, 14, 15)

# numeric indexing
w[1]
w[4]

# colon indexing
print("# Colon Indexing:")
w[3:5]
1:10 # [1]  1  2  3  4  5  6  7  8  9 10
10:1 # [1] 10  9  8  7  6  5  4  3  2  1

# booelan indexing
w[
   c(
     F, # false
     T, # true
     T, # true
     F, # false
     T # true
   )
]

# negative indexing
w[-3] # grab everything except the 3rd value

# inserting new values into a vector

# add a value to the start of a vector
w <- c(100, w)


length(w)
mode(w) # mode = Numeric
w <- c(w[1], T, w[2:length(w)])

y <- c('a', 'b', 'c')
y <- c(1, y) # concaternate 1 to the start = output: [1] "1" "a" "b" "c"

# add value to the end of a vector
w <- c(w, 10000)
w

## recycling - to populate a vector
x <- c(1, 2, 3)
y <- c(10, 11, 12, 13) # 13 gets the recycled 1 added

x + y # how is R going to handle that the x vector is shorter than the y vector

# generate a vector of zeros
x <- vector("numeric", 10)
x #  [1] 0 0 0 0 0 0 0 0 0 0

# recycling 2. - fill a vector with values 1 & 2
x[1:10] <- c(1, 2)
x #  [1] 1 2 1 2 1 2 1 2 1 2

# order of operation
n <- 10
1:n-1 # [1] 0 1 2 3 4 5 6 7 8 9
1:(n-1) # [1] 1 2 3 4 5 6 7 8 9 (subtracts 1 from n first)

# other ways to make vectors
seq(from = 1, to = 10, by = 2) # [1] 1 3 5 7 9
# seq(1, 10, 2) - shorthand

rep(c(1, 13), 3) # repeat 3 times - # [1]  1 13  1 13  1 13

