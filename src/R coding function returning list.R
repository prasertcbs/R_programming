
basic_stat <- function(x) {
    xbar <- mean(x)
    deviation <- x - xbar
    deviation_sq <- deviation ^ 2
    ss <- sum(deviation_sq)
    var.p <- ss / length(x)
    var.s <- ss / (length(x) - 1)
    calc <- data.frame(x, xbar, deviation, deviation_sq)
    list(
        raw = x,
        n = length(x),
        mean = xbar,
        deviation = deviation,
        deviation_sq = deviation_sq,
        var.p = var.p,
        var.s = var.s,
        sd.p = sqrt(var.p),
        sd.s = sqrt(var.s),
        calc = calc
    )
}

y <- c(50, 45, 60, 70, 35)
s <- basic_stat(y)
s$calc
s$calc$x
s$var.p

plot_basic_stat <- function(s) {
    x <- 1:s$n
    plot(x, s$raw, pch = 16, col ="skyblue", cex=1.5)
    abline(h = s$mean, col="limegreen")
    for (i in x) {
        lines(c(i, i), c(s$mean, s$raw[i]), col="orange", lty = 2, lwd = 2)
    }
}
plot_basic_stat(s)