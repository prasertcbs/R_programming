### mod or %%
isOdd <- function(n) {
    ifelse(n %% 2 == 1, T, F)
}

isEven <- function(n) {
    # ifelse(n %% 2 == 0, T, F)
    !isOdd(n)
}

leapyear <- function(year) {
    ifelse(year %% 4 == 0, T, F)
    # if (year %% 4 == 0) {
    #     return(T)
    # } else {
    #     return(F)
    # }
}

zodiac <- function(buddhistYear) {
    z <- c("Snake", "Horse", "Goat", "Monkey", "Rooster", "Dog", "Pig", "Rat", "Ox", "Tiger", "Rabbit", "Dragon")
    return(z[(buddhistYear %% 12) + 1])
}

for (y in 2556:2570) {
    print(sprintf("%d %s", y, zodiac(y)))
}