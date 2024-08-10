# Load required libraries
library(ggplot2)

# Create the data frame for test data
test_data <- data.frame(
  Player = rep("Virat Kholi", 7),  # Replace "Player B" with the actual player name
  teams = c("Australia", "Bangladesh", "England", "New Zealand", "South Africa", "Sri Lanka", "West Indies"),
  matches = c(12, 3, 9, 6, 9, 7, 6),
  runs = c(708, 33, 747, 424, 678, 509, 578)
)

# Define color scale for the heatmap
color_scale <- scale_fill_gradient(low = "lavender", high = "pink")

# Heatmap to represent the test data
heatmap_plot <- ggplot(test_data, aes(x = teams, y = matches, fill = runs)) +
  geom_tile() +
  labs(title = "Test Cricket Heatmap for Virat Kholi",
       x = "Opposing Team",
       y = "Matches Played",
       fill = "Runs Scored") +
  color_scale +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Display the plot
print(heatmap_plot)

