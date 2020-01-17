catenate_by_endash <- function(range) {
  start <- sprintf("%.1f", range[1])
  end   <- sprintf("%.1f", range[2])
  return(paste(start, end, sep = "--"))
}

#' @export
my_range <- function(x) {
  x %>%
    range() %>%
    catenate_by_endash()
}
