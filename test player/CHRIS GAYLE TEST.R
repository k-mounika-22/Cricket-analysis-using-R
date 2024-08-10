
library(ggplot2)


test_data <- data.frame(
  Player = rep("Chris Gayle", 7),
  teams = c("Australia", "Bangladesh", "England", "New Zealand", "South Africa", "Sri Lanka", "West Indies"),
  matches = c(24, 4, 20, 20, 10, 12, 13),
  runs = c(2068, 69, 1393, 1334, 546, 1112, 1347)
)


color_scale <- scale_fill_gradient(low = "lightgreen", high = "darkorange")


heatmap_plot <- ggplot(test_data, aes(x = teams, y = matches, fill = runs)) +
  geom_tile() +
  labs(title = "Test Cricket Heatmap for Chris Gayle",
       x = "Opposing Team",
       y = "Matches Played",
       fill = "Runs Scored") +
  color_scale +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


print(heatmap_plot)

