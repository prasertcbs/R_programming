#' Title
#'
#' @param sq_wa
#'
#' @return
#' @export
#'
#' @examples
sq_wa2thaiArea <- function(sq_wa) {
    rai <- sq_wa %/% 400
    ngan <- (sq_wa - (rai * 400)) %/% 100
    wa <- sq_wa - (rai * 400) - (ngan * 100)
    # wa <- sq_wa %% 100
    # named vector
    c(rai=rai, ngan=ngan, wa=wa)
}


#' convert square meter to rai ngan sq_wa
#'
#' @param sq_m area in square meter
#'
#' @return vector(rai, ngan, sq_wa)
#' @export
#'
#' @examples
sq_m2thaiArea <- function(sq_m) {
    sq_wa2thaiArea(sq_m / 4)
}
