dim1 <- c(20, 10, 5) # create vector
dim1
dim1[3]

dim2 <- list(20, 10, 5) # create list with 3 components
dim2[3] # get the 3rd components and return as list
dim2[[3]] # get the 3rd components and return as numeric

p <- list("Peter", as.Date("1990-04-13")) # list can contains different values from different data types
v <- c("Peter", as.Date("1990-04-13"))
v
p

dim3 <- list(h=20, w=10, d=5) # list with named component
dim3
dim3$w
dim3$v <- 1000
dim3

dim3$v <- NULL
dim3

# list contains character and vector
person <- list(
    firstname = "Peter", lastname = "James",
    scores=c(80, 75, 82),
    tests=c(eng = 80, math = 90))
person$scores
a <- unlist(person)
a

b <- unlist(person) # flatten list to vector
b
