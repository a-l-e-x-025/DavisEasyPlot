#' @title Plotting
#' @description
#' Plots the found summary and outliers
#' @name Plotting
#' @param x A numeric vector
#'
#' @return A ggplot object
#' @export

usethis::use_package("ggplot2")
library(ggplot2)
plot_with_stats <- function(x) {
  outliers <- detect_outliers(x)
  stats <- calculate_summary(x)
  df <- data.frame(index = seq_along(x), value = x, outlier = outliers)

  ggplot(df, aes(x = index, y = value)) +
    geom_line(color = "blue") +
    geom_point(aes(color = outlier)) +
    geom_hline(yintercept = stats$mean, color = "red", linetype = "dashed") +
    geom_hline(yintercept = stats$median, color = "green", linetype = "dashed") +
    geom_hline(yintercept = stats$Q1, color = "orange", linetype = "dotted") +
    geom_hline(yintercept = stats$Q3, color = "orange", linetype = "dotted") +
    labs(title = "Line Plot of Values with Outliers Highlighted",
         x = "Index",
         y = "Value") +
    theme_minimal() +
    scale_color_manual(values = c("TRUE" = "red", "FALSE" = "black"))
} #Outliers in Red Points
