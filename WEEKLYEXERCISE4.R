library(usethis)

git_default_branch()

# Default Branch Name: main
# Step 7
library(tidyverse)
library(readr)
library(ggplot2)
olympics <- read.csv("Olympics.csv")
# 7a
delegation_1992 <- olympics %>%
  filter(year == 1992) %>%
  select(country, athletes) %>%
  arrange(desc(athletes))
delegation_1992

# 7b
olympics <- olympics %>%
  mutate(country = trimws(country))
plot_countries <- olympics %>%
  filter(country %in% c("United States", "France", "Germany", "Russia", "China"))
ggplot(plot_countries, aes(x = year, y = gold, color = country)) +
  geom_line() +
  geom_point() +
  labs(
    title = "Gold Medals Over Time",
    x = "Years",
    y = "Gold Medal",
    color = "Country"
  ) +
  theme_minimal()

