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

