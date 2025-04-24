#' @title DetectOutliers
#' @description
#' Detects outliers
#'
#' @param x A numeric vector
#'
#' @return A logical vector indicating outliers
#' @export
detect_outliers <- function(x) {
  Q1 <- quantile(x, 0.25, na.rm = TRUE)
  Q3 <- quantile(x, 0.75, na.rm = TRUE)
  IQR_val <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR_val
  upper <- Q3 + 1.5 * IQR_val
  return(x < lower | x > upper)
}
