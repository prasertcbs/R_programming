rectangle <- function(w,h) {
    w*h
}
rectangle(5, 7)

rectangle2 <- function(w,h) {
    return(w*h)
}
rectangle2(4, 3)
a <- rectangle2(4, 5)

square <- function(side) {
    return(side * side) # side ^ 2
}
b <- square(5)

square2 <- function(side) {
    return(rectangle(side, side))
}
square2(4)

greeting <- function(lang) {
    if(lang=="th") {
        return("sawadee")
    } else {
        return("hello")
    }
}

greeting("th")
greeting("vn")