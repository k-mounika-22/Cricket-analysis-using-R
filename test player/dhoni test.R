
library(ggplot2)


test_data <- data.frame(
  Player = rep("Dhoni", 7),
  teams = c("Australia", "Bangladesh", "England", "New Zealand", "South Africa", "Sri Lanka", "West Indies"),
  matches = c(19, 3, 21, 9, 5, 12, 9),
  runs = c(990, 193, 1157, 599, 323, 647, 491)
)



color_scale <- scale_fill_gradient(low = "grey", high = "turquoise")

heatmap_plot <- ggplot(test_data, aes(x = teams, y = matches, fill = runs)) +
  geom_tile() +
  labs(title = "Test Cricket Heatmap for M S Dhoni",
       x = "Opposing Team",
       y = "Matches Played",
       fill = "Runs Scored") +
  color_scale +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Display the plot
print(heatmap_plot)

