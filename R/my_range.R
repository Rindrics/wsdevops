#' Catenate two characters by endash
#'
#' @param x First arg in character
#' @param y Second arg in character
cat_endash <- function(x, y) {
  if (!is.character(x) || !is.character(y)) stop("Give me character args")
  paste(x, y, sep = "--")
}
}

#' @export
my_range <- function(x) {
  x %>%
    range() %>%
    catenate_by_endash()
}
