# Load required libraries
library(ggplot2)

# Create the data frame for test data
test_data <- data.frame(
  Player = "Virat Kohli", 
  teams = c("Afghanistan", "Australia", "Bangladesh", "England", "Ireland",
            "Netherlands", "New Zealand", "Pakistan", "South Africa",
            "Sri Lanka", "U.A.E.", "West Indies", "Zimbabwe"
  ),
  runs = c(67, 2172, 807, 1340, 78, 12, 1433, 536, 1403, 2503, 33, 2261, 253),
  matches = c(2, 46, 15, 35, 2, 1, 29, 13, 30, 50, 1, 42, 8)
)

# Scatter plot to represent the test data
scatter_plot <- ggplot(test_data, aes(x = matches, y = runs, color = teams)) +
  geom_point(size = 3) +
  labs(title = "Virat Kohli: ODI",
       x = "Matches Played",
       y = "Runs Scored",
       color = "Opposing Team") +
  theme_minimal()

# Display the plot
print(scatter_plot)

