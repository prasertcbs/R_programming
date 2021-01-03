sq_wa2thaiArea <- function(sq_wa) {
    rai <- sq_wa %/% 400
    ngan <- (sq_wa - (rai * 400)) %/% 100
    wa <- sq_wa - (rai * 400) - (ngan * 100)
    # wa <- sq_wa %% 100
    # named vector
    c(rai=rai, ngan=ngan, wa=wa)
}

a <- sq_wa2thaiArea(720)
a["rai"]

sq_m2thaiArea <- function(sq_m) {
    sq_wa2thaiArea(sq_m / 4)
}
sq_m2thaiArea(1600)
b <- sq_m2thaiArea(2100)
paste(b, collapse = "-")
