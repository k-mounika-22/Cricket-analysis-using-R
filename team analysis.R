library(ggplot2)

cricket_data <- data.frame(
  Team = c("ENGLAND IN TEST CRICKET"),
  Opponent = c("AUSTRALIA","INDIA","SRI LANKA","WEST INDIES"),
  Matches_Won = c(123,89,80,87)
)

# Plot the histogram
ggplot(cricket_data, aes(x = Opponent, y = Matches_Won, fill = Opponent)) +
  geom_bar(stat = "identity") +
  labs(title = "Cricket Analysis: Matches Won by England Against Opponent Teams",
       x = "Opponent Team", y = "Number of Matches Won") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

