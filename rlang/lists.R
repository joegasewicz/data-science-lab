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
