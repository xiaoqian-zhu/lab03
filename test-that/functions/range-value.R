range_value <- function(x, na.rm=F) {
  
  if (na.rm) {
    x <- na.omit(x)
  }
  max(x) - min(x)
}