### basic data types
w <- 5
w * 2
a <- w*7

gpa <- 3.45
students <- 30L

class(w)
class(gpa)
class(students)

### case sensitive
firstName <- "Peter"
firstname <- "Jenny"
class(firstName)

### Date
birthdate <- as.Date("1998-07-28") # 28 July
class(birthdate)

# vector
menu <- c("green tea", "lemon tea", "mocha", "latte", "espresso")
menu[1]
menu[3]
menu[3:5]
price <- c(45, 50, 35, 70, 60)
d <- data.frame(menu, price)

orders <- c(5, 10, 3, 20, 100)
d2 <- data.frame(menu, price, orders)
d2$revenue <- d2$price * d2$orders
sum(d2$revenue)
