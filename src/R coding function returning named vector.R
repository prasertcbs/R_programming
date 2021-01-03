three_means <- function(x) {
    mean <- mean(x)
    harmonic <- length(x) / sum(1 / x)
    geometric <- prod(x)^(1 / length(x))
    # named vector
    # return(c(average=mean, harmean=harmonic, geomean=geometric))
    c(average=mean, harmean=harmonic, geomean=geometric)
}

x <- c(10, 5, 7, 9, 3, 1)
m <- three_means(x)
m["harmean"]

quadratic <- function(a, b, c) {
    t <- b^2 - 4 * a * c
    c(x1 = (-b + sqrt(t))/(2*a), x2 = (-b - sqrt(t))/(2*a))
}
x <- quadratic(2, 7, 3)
x <- quadratic(10, 7, 3)
x
x["x1"]
