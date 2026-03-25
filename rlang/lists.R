# Lists
# Store different variable modes in a single data structure.
x <- list(name = "Adam", age = 35, didGraduate = T)
mode(x)
str(x)
attributes(x)
names(x)
x

xNameless <- list("Adam", 35, T)
xNameless
attributes(xNameless)

xNameless[[1]]
xNameless[[2]]
xNameless[[3]]

x$name
x[["name"]]

xNameless
names(xNameless) <- c("Name", "age", "isGraduated")
attributes(xNameless)
xNameless$Name

unlist(x) # ulist turns into a vector in to a single variable mode
x

x <- list(name = "Adam", age = 35, didGraduate = T)
y <- list(name = "Sarah", age = 20, didGraduate = F)
z <- list(name = "Bob", age = 40, didGraduate = F)
allList = list(x, y, z)
allList

allList[[2]]$age # 20
allList[[2]][[2]] # 20 - no item name
allList[[2]][2] # maintains the name of the item

### Double Square Brackets
x <- list(name = "Adam", age = 35, didGraduate = T)
x[1] # includes name
x[[1]] # no name

mode(x[1]) # list values
mode(x[[1]]) # character value

x[1:2]

x[4] <- 170
names(x)[4] <- "height"
x

x[5:7] <- c(T, T, F)
x

x[[8:10]] <- c(23, 34, 1) # will error!
x

# multiplying
x[[4]]*2


x <- list(name = "Adam", age = 35, didGraduate = T)
x[[2]]*2

x <- list(1,2,3,4)
# x+1 # error!
z <- unlist(x) + 1
mode(z)
