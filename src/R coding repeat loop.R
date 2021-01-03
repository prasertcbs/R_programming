### 1) for loop
demo_for <- function(n) {
    for (i in 1:n) {
        print(i)
    }
}
demo_for(10)

### 2) while loop
# while (condition) { ... }
demo_while <- function(n) {
    i <- 1
    while (i <= n) {
        print(i)
        i <- i + 1
    }
}
demo_while(10)

### 3) repeat
# do { ... } while()
demo_repeat <- function(n) {
    i <- 1
    repeat {
        # statement
        print(i)
        i <- i + 1
        # check condition
        if (i > n) {
            break # exit loop (repeat)
        }
    }
    print("done")
}
demo_repeat(10)


two_dice <- function(target_number) {
    i <- 0
    repeat {
        n1 <- sample(1:6, 1)
        n2 <- sample(1:6, 1)
        i <- i + 1
        print(sprintf("%d: %d %d", i, n1, n2))
        if ((n1 + n2) == target_number) {
            break
        }
    }
}
two_dice(2)

two_dice_while <- function(target_number) {
    i <- 1
    n1 <- sample(1:6, 1)
    n2 <- sample(1:6, 1)
    while (n1 + n2 != target_number) {
        print(sprintf("%d: %d %d", i, n1, n2))
        i <- i + 1
        n1 <- sample(1:6, 1)
        n2 <- sample(1:6, 1)
    }
    print(sprintf("%d: %d %d", i, n1, n2))
}

two_dice_while(2)