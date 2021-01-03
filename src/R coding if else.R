
speed_check <- function(speed) {
    if (speed > 100) {
        print("too fast")
        print("fine 1,000 baht")
    }
}
speed_check(120)
speed_check(70)

ticket_fare <- function(age) {
    if (age <= 5) {
        print("free")
    } else {
        print("fare = 50")
    }
}
ticket_fare(35)

ticket_fare2 <- function(age) {
    if (age <= 5 || age >= 60) {
        print("free")
    } else {
        print("fare = 50")
    }
}
ticket_fare2(35)
ticket_fare2(70)

ticket_fare3 <- function(age, isLocal) {
    if ((age <= 5 || age >= 60) && isLocal) {
        print("free")
    } else {
        print("fare = 50")
    }
}
ticket_fare3(70, FALSE)
ticket_fare3(70, TRUE)

greeting <- function(country) {
    if (country == "th") {
        print("sawadee")
    } else if (country == "en") {
        print("hello")
    } else {
        print(":-)")
    }
}
greeting("th")
greeting("en")
greeting("aa")
