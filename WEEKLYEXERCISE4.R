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