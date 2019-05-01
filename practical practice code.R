#Lab Practical practice

#project title: LabPracticalpractice2019

#to claim repo: https://github.com/SShigematsu4/LabPracticalpractice2019

#data saved as: sample-data.csv

library(tidyverse)


#all data (excluding NAs)
sampledata <- read_csv("sample-data.csv") %>%
  filter(complete.cases(.))

sampledata

#6 tibble - species A & B + height (excluding NAs)

data1 <- sampledata %>%
  select(species, height) %>%
  filter(species != "C")

print(data1)

#tibble w/ mean & SE for species A & B
data1 %>%
  group_by(species) %>%
  summarize(mean = mean(height, na.rm = TRUE),
            standar = sd(height, na.rm = TRUE)
            )

#(for 7) tibble w/ all species + height (excluding NAs)
data2 <- sampledata %>%
  select(species, height)
  
print(data2)

#7 histogram of heights w/ facets for species x3
data2 %>%
  group_by(species) %>%
  ggplot(aes(height)) +
  geom_histogram(binwidth = 2, color="purple") +
  facet_grid(~ species) +
  labs(x = "Species", y = "Height")

#(for 8) tibble w/ all species + height & weight (excluding NAs)
data3 <- sampledata %>%
  select(species, height, weight)

print(data3)

#8 scatterplot of heights & weights  
  
#(for 8) tibble w/ all species + height & weight
Tdata3 <- data3 %>%
  group_by(species) %>%
  ggplot(aes(height)) +
  geom_point(na.rm = TRUE, aes(height, weight, colour = species))

print(Tdata3 + ggtitle("Species A, B and C: Height and Weight")) +
  labs(y="Weight", x = "Height")
  
