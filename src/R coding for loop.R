
demo_loop <- function() {
    for (i in 1:10) {
        print(i)
    }
}
demo_loop()

demo_loop2 <- function(m, n) {
    for (i in m:n) {
        print(i)
    }
}
demo_loop2(11, 20)

count_down <- function() {
    for (i in seq(from=10, to=1, by=-1)) {
        print(i)
    }
}
count_down()

sum_odd <- function(m, n) {
    total <- 0
    for (i in seq(from=m, to=n, by=2)) {
        print(i)
        total <- total + i
        # total+=i
    }
    return(total)
}
sum_odd(1,20)

demo2 <- function(v) {
    for (i in v) {
        print(i)
    }
}

a <- c(2, 3, 7, 2, 4, 8)
demo2(a)

phone_fortune <- function(phoneNumber) {
    total <- 0
    for (i in 1:nchar(phoneNumber)) {
        print(substr(phoneNumber, i, i))
        total <- total + as.integer(substr(phoneNumber, i, i))
    }
    return(total)
}

phone_fortune("0819871234")