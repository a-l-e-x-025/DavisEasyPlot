#' @title CalculateStatistics
#' @description
#' Calculates a summary of the dataset
#'
#' @param x A numeric vector
#'
#' @return A list with mean, median, Q1, Q3, and IQR
#' @export
calculate_summary <- function(x) {
  stats <- list(
    mean = mean(x, na.rm = TRUE),
    median = median(x, na.rm = TRUE),
    Q1 = quantile(x, 0.25, na.rm = TRUE),
    Q3 = quantile(x, 0.75, na.rm = TRUE),
    IQR = IQR(x, na.rm = TRUE)
  )
  return(stats)
}
