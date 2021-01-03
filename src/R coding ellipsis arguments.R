
# ellipsis (...)
add <- function(...) {
    b <- unlist(list(...)) # convert list to vector
    sum(b)
    # for (e in b) {
    #     print(e)
    # }
}

add2 <- function(v) {
    sum(v)
}

add(2, 3, 4, 10)
add2(c(2, 3, 4, 10))

npv <- function(rate, ...) {
    s <- 0
    cashflow <- unlist(list(...))
    for(i in 1:length(cashflow)) {
        s <- s + cashflow[i] / (1 + rate) ^ i
    }
    return(s)
}

npv2 <- function(rate, cashflow) {
    s <- 0
    for(i in 1:length(cashflow)) {
        s <- s + cashflow[i] / (1 + rate) ^ i
    }
    return(s)
}

-1000 + npv(.10, 100, 200, 150, 500)
-1000 + npv2(.10, c(100, 200, 150, 500))
