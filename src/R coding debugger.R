greeting <- function(country) {
    if (country == "th") {
        print("sawadee")
    } else if (country == "en") {
        print("hello")
    } else if (country == "cn") {
        print("Ni hao")
    } else {
        print(":-)")
    }
}
greeting("cn")

phone_fortune <- function(phoneNumber) {
    total <- 0
    for (i in 1:nchar(phoneNumber)) {
        s <- substr(phoneNumber, i, i)
        total <- total + as.integer(s)
    }
    return(total)
}

a <- phone_fortune("0819871234")
b <- phone_fortune("0997953377")


sum_odd <- function(m, n) {
    total <- 0
    for (i in seq(from=m, to=n, by=2)) {
        print(i)
        total <- total + i
    }
    return(total)
}
x <- sum_odd(1, 10)
