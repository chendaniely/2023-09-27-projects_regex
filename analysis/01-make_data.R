library(tidyverse)

raw <- read_csv("~/Desktop/Fake Phone Numbers Survey Student Analysis Report.csv")
names(raw)

numbers <- raw %>%
  select(`7726695: Make up a telephone number from the country you are from.\nYou can add anything that makes it a valid phone number in your country (e.g., country code, dashes, parenthesis, spaces, etc).`)

names(numbers) <- "number"
numbers

write_csv(numbers, "~/Desktop/fake_numbers.csv")

raw %>%
  select(name) %>%
  write_csv("~/Desktop/names.csv")
