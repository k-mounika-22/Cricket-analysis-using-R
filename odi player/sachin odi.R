# Load required libraries
library(ggplot2)

# Create the data frame for test data
test_data <- data.frame(
  Player = "Virat Kohli", 
  teams = c("Afghanistan", "Australia", "Bangladesh", "England", "Ireland",
            "Netherlands", "New Zealand", "Pakistan", "South Africa",
            "Sri Lanka", "U.A.E.", "West Indies", "Zimbabwe"
  ),
  runs = c(3077,
           496,
           57,
           1455,
           42,
           647,
           152,
           79,
           1750,
           2526,
           2001,
           3113,
           81,
           1573,
           1377
           
  ),
  matches = c(71,
              12,
              1,
              37,
              2,
              10,
              1,
              2,
              42,
              69,
              57,
              84,
              2,
              39,
              34
              
  )
)

# Scatter plot to represent the test data
scatter_plot <- ggplot(test_data, aes(x = matches, y = runs, color = teams)) +
  geom_point(size = 3) +
  labs(title = "Sachin: ODI",
       x = "Matches Played",
       y = "Runs Scored",
       color = "Opposing Team") +
  theme_minimal()

# Display the plot
print(scatter_plot)

