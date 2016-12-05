#' @title combits
#' @description Complete bits.
#' @author Xiaotao Shen
#' \email{shenxt@@sioc.ac.cn}
#' @param num: A numeric vector.
#' @param bit: The bit number.
#' @return A completed character vector.
#' @export
#' @examples
#' \dontrun{
#' combits(num = seq(1, 100, 1), bit = 5)
#' }

combits <- function(num, bit = 5) {
  # browser()
  num1 <- sapply(num, function(x) {  len <- nchar(x)
  x <- ifelse(len >= bit, as.character(x), paste(paste(rep(0, (bit - len)), collapse = ""),x, sep = ""))
  })
return(num1)
  }
