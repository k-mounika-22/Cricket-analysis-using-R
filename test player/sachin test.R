# Load required libraries
library(ggplot2)

# Create the data frame for test data
test_data <- data.frame(
  Player = rep("Sachin", 7),
  teams = c("Australia", "Bangladesh", "England", "New Zealand", "South Africa", "Sri Lanka", "West Indies"),
  matches = c(39, 7, 32, 24, 18, 25, 21),
  runs = c(3630, 820, 2535, 1595, 1057, 1741, 1995)
)

# Define color scale for the heatmap
color_scale <- scale_fill_gradient(low = "lightblue", high = "darkblue")

# Heatmap to represent the test data
heatmap_plot <- ggplot(test_data, aes(x = teams, y = matches, fill = runs)) +
  geom_tile() +
  labs(title = "Test Cricket Heatmap for Sachin",
       x = "Opposing Team",
       y = "Matches Played",
       fill = "Runs Scored") +
  color_scale +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Display the plot
print(heatmap_plot)

