library(usethis)
git_default_branch()
#Default Branch Name: main

#Step 6
library(ggplot2)
library(tidyverse)
library(readr)
olympics <- read.csv("Olympics.csv")
#Question 6
#6a
olympics <- olympics %>%
  mutate(total.medals = gold + silver + bronze)
#6b
country_gold_total <- olympics %>%
  group_by(country) %>%
  summarize(total.gold = sum(gold, na.rm = TRUE))
country_gold_total
