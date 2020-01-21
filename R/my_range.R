#' Catenate two characters by endash
#'
#' @param x First arg in character
#' @param y Second arg in character
cat_endash <- function(x, y) {
  if (!is.character(x) || !is.character(y)) stop("Give me character args")
  paste(x, y, sep = "--")
}

#' Print numeric in float with given decimal points
#'
#' @param x Numeric vector to convert
#' @param decimals Number of decimal points to print
print_decimal <- function(x, decimals) {
  sprintf(paste0("%.", decimals, "f"), x)
}


#' Print range of given arg for table output
#'
#' @inheritParams print_decimal
#' @param x Numeric to calculate range
#' @export
range4table <- function(x, decimals = 1) {
  ranges <- range(x)

  start <- print_decimal(ranges[1], decimals = decimals)
  end   <- print_decimal(ranges[2], decimals = decimals)

  cat_endash(start, end)
}
