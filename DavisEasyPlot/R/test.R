
library(ggplot2)
data("airquality")
x <- airquality$Ozone

# Calculate summary statistics
summary_stats <- calculate_summary(x)
print(summary_stats)

# Detect outliers
outlier_flags <- detect_outliers(x)
print(which(outlier_flags))

# Plot the results
plot <- plot_with_stats(x)
print(plot)

