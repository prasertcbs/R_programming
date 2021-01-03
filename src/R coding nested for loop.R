m_table <- function() {
    for (i in 2:5) {
        for (j in 1:12) {
            print(sprintf("%d x %d = %d", i, j, i * j))
        }
    }
}

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