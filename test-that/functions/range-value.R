range_value <- function(x, na.rm = T){
  if (na.rm == T){
    x <- x[!is.na(x)]}
  max(x) - min(x)
}