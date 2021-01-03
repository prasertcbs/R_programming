p <- list("Peter", "James", 25, "M", c(80, 90, 75))
p[2] # return as list
p[[2]]
p[3]
p[3] + 5
p[[3]] + 5

person <- list(firstname = "Peter",
               lastname = "James",
               age = 25,
               gender = "M",
               scores = c(eng=80, math=90, sci=75))
person$firstname
person$age + 5
person["lastname"]
person["age"] + 7 # error
person$scores
sum(person$scores)
person[3]

person$firstname <- "Taylor"
person
person$phone <- "081234555"
person
person$phone <- NULL
person

View(women)
m <- lm(weight~height, data=women)
summary(m)
m$coefficients
m$coefficients[2]
m$coefficients["height"]
m$model$height
