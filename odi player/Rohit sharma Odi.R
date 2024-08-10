# Load required libraries
library(ggplot2)

# Create the data frame for test data
test_data <- data.frame(
  Player = "Rohit Sharma", 
  teams = c("Afghanistan", "Australia", "Bangladesh", "England", "Ireland",
            "Netherlands", "New Zealand", "Pakistan", "South Africa",
            "Sri Lanka", "U.A.E.", "West Indies", "Zimbabwe"
  ),
  runs = c(19,
           2251,
           738,
           637,
           34,
           64,
           889,
           720,
           766,
           1807,
           57,
           1601,
           242
  ),
  matches = c(2,
              42,
              15,
              19,
              2,
              2,
              27,
              16,
              25,
              49,
              1,
              36,
              7
  )
)

# Scatter plot to represent the test data
scatter_plot <- ggplot(test_data, aes(x = matches, y = runs, color = teams)) +
  geom_point(size = 3) +
  labs(title = "Rohit Sharma: ODI",
       x = "Matches Played",
       y = "Runs Scored",
       color = "Opposing Team") +
  theme_minimal()

# Display the plot
print(scatter_plot)

