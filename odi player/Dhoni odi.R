# Load required libraries
library(ggplot2)

# Create the data frame for test data
test_data <- data.frame(
  Player = "Virat Kohli", 
  teams = c("Afghanistan", "Australia", "Bangladesh", "England", "Ireland",
            "Netherlands", "New Zealand", "Pakistan", "South Africa",
            "Sri Lanka", "U.A.E.", "West Indies", "Zimbabwe"
  ),
  runs = c(36,
           174,
           1660,
           569,
           29,
           1546,
           109,
           34,
           19,
           940,
           1231,
           "-",
             830,
           2383,
           "-",
             1005,
           208
  ),
  matches = c(2,
              3,
              55,
              21,
              1,
              48,
              2,
              2,
              1,
              28,
              36,
              1,
              37,
              67,
              1,
              39,
              6
  )
)

# Scatter plot to represent the test data
scatter_plot <- ggplot(test_data, aes(x = matches, y = runs, color = teams)) +
  geom_point(size = 3) +
  labs(title = "Dhoni: ODI",
       x = "Matches Played",
       y = "Runs Scored",
       color = "Opposing Team") +
  theme_minimal()

# Display the plot
print(scatter_plot)

