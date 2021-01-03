celsius2fah <- function(celsius) {
    (celsius * 9/5) + 32
}

fah2celsius <- function(fah) {
    (fah - 32) * 5 / 9
}

temperatureTable <- function() {
    for (celsius in 0:100) {
        print(sprintf("%dC = %.1fF", celsius, celsius2fah(celsius)))
    }
}