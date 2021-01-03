playingCard <- function() {
    rank <- c("A", 2:10, "J", "Q", "K")
    # suit <- c("Spades", "Hearts", "Diamonds", "Clubs")
    suit <- c("\u2660", "\U2665", "\U2666", "\u2663")
    # deck <- character(52)
    deck <- character(length(rank) * length(suit))
    i <- 1
    for (s in suit) {
        for (r in rank) {
            deck[i] <- paste(r, s, sep="")
            i <- i + 1
        }
    }
    return(deck)
}

playingCard()

playingCard_crossjoin <- function() {
    rank <- c("A", 2:10, "J", "Q", "K")
    # suit <- c("Spades", "Hearts", "Diamonds", "Clubs")
    suit <- c("\u2660", "\U2665", "\U2666", "\u2663")
    d <- merge(rank, suit, all=T)
    deck <- paste(d$x, d$y, sep="")
}

a <- playingCard_crossjoin()
a

t <- I(c("alpha", "beta", "gamma"))
m <- merge(t, t, all=TRUE)
m
m[m$x != m$y,]
m[m$x > m$y,]
