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

#' @export
my_range <- function(x) {
  x %>%
    range() %>%
    catenate_by_endash()
}
