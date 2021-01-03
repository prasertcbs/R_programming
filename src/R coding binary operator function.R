### binary operator function

"%+%" <- function(a, b) {
    paste(a, b, sep="")
}
"hello" %+% "world"

"%union%" <- function(a, b) {
    unique(c(a, b))
}

a <- c("mocha", "espresso", "apple", "coke")
b <- c("apple", "latte", "coke")
a %union% b

"%intersect%" <- function(a, b) {
    a[a %in% b]
}
a %intersect% b

"%except%" <- function(a, b) {
    a[!(a %in% b)]
}
a %except% b
