rolldice <- function() {
    sample(1:6, 1)
}

rolldice2 <- function(n) {
    # sample(1:6, n)
    sample(x = 1:6, size = n)
}

?sample

rolldice3 <- function(n = 1) {
    # sample(1:6, n)
    sample(x = 1:6, size = n)
}

rolldice4 <- function(n = 1, replace=T) {
    # sample(1:6, n)
    sample(x = 1:6, size = n, replace = replace)
}
