#Lab Practical practice

#project title: LabPracticalpractice2019

#to claim repo: https://github.com/SShigematsu4/LabPracticalpractice2019

#data saved as: sample-data.csv


library(tidyverse)

#6 tibble - species A & B + height
sampledata <- read_csv("sample-data.csv") %>%
  select(species, height) %>%
  filter(species != "C")

sampledata

#tibble excluding NAs
data <- sampledata %>%
  filter(complete.cases(.))

data

#tibble w/ mean & SE
data %>%
  group_by(species) %>%
  summarize(mean = mean(height, na.rm = TRUE),
            standar = sd(height, na.rm = TRUE)
            )

#7 histogram of heights w/ facets for species x3
ggplot(sampledata) +
  geom_histogram(aes(height))
