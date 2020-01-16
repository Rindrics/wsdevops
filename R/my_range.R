catenate_by_endash <- function(range) {
  start <- sprintf("%.1f", range[1])
  end   <- sprintf("%.1f", range[2])
  paste(start, end, sep = "--")
}

my_range <- function(df_iris) {
  df_iris %>%
    range() %>%
    catenate_by_endash()
}
