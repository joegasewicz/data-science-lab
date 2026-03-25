# Vectors
# Vectors can only store a single variable mode

w <- c(11, 12, 13, 14, 15)

# numeric indexing
w[1]
w[4]

# colon indexing
w[3:5]

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


