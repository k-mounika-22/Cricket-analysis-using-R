# Load required libraries
library(ggplot2)

# Create the data frame for test data
test_data <- data.frame(
  Player = rep("Chris Gayle", 13),
  teams = c("Afghanistan", "Australia", "Bangladesh", "England", "Ireland",
            "Netherlands", "New Zealand", "Pakistan", "South Africa",
            "Sri Lanka", "U.A.E.", "West Indies", "Zimbabwe"
  ),
  runs = c(18, 1, 823, 661, 137, 1632, 1334, 68, 384, 131, 1026, 994, 85),
  matches = c(3, 1, 32, 22, 3, 36, 41, 4, 5, 2, 30, 35, 2)
)

# Scatter plot to represent the test data
scatter_plot <- ggplot(test_data, aes(x = matches, y = runs, color = teams)) +
  geom_point(size = 3) +
  labs(title = "Chris Gayle: ODI",
       x = "Matches Played",
       y = "Runs Scored",
       color = "Opposing Team") +
  theme_minimal()

# Display the plot
print(scatter_plot)

