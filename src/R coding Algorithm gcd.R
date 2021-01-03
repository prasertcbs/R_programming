# greatest common divisor

# 48, 18
gcd_loop <- function(a, b) {
    d <- ifelse(a < b, a, b)
    while (d >= 1) {
        print(sprintf("d = %d, a mod d = %d, b mod d = %d", d, a %% d, b %% d))
        if (a %% d == 0 && b %% d == 0) {
            return(d)
        } else {
            d <- d - 1
        }
    }
}
gcd_loop(48, 18)


# binary method algorithm: https://en.wikipedia.org/wiki/Greatest_common_divisor
# Input: a, b positive integers
# Output: g and d such that g is odd and gcd(a, b) = g×2^d
# d := 0
# while a and b are both even do
#   a := a/2
#   b := b/2
#   d := d + 1
# while a ≠ b do
#   if a is even then a := a/2
#   else if b is even then b := b/2
#   else if a > b then a := (a – b)/2
#   else b := (b – a)/2
# g := a
# output g, d
gcd <- function(a, b) {
    d <- 0
    print(sprintf("a = %d, b = %d, d = %d", a, b, d))
    while (a %% 2 == 0 && b %% 2 == 0) {
        a <- a / 2
        b <- b / 2
        d <- d + 1
        print(sprintf("a = %d, b = %d, d = %d", a, b, d))
    }
    while (a != b) {
        if (a %% 2 == 0) {
            a <- a / 2
        } else if (b %% 2 == 0) {
            b <- b / 2
        } else if (a > b) {
            a <- (a - b) / 2
        } else {
            b <- (b - a) / 2
        }
        print(sprintf("a = %d, b = %d, d = %d", a, b, d))
    }
    return(a * 2 ^ d)
}
gcd(48, 18)
