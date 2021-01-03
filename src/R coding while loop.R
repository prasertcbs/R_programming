demo <- function(n) {
    i <- 1
    while (i <= n) {
        print(i)
        i <- i + 1
    }
}

demo(10)

demo_for <- function(n) {
    for (i in 1:n) {
        print(i)
    }
}
demo_for(10)

saving <- function(pv, rate, fv) {
    i <- 1
    amt <- 0
    while (amt <= fv) {
        amt <- pv * (1 + rate) ^ i # 100 * (1.05) ^ i
        print(sprintf("year %d, amt = %.2f", i, amt))
        i <- i + 1
    }
    return(i - 1)
}
saving(100, .05, 150)
