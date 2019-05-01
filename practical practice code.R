#Lab Practical practice

#project title: LabPracticalpractice2019

#to claim repo: https://github.com/SShigematsu4/LabPracticalpractice2019

#data saved as: sample-data.csv


library(tidyverse)

sampledata <- read_csv("sample-data.csv")

#6 mean & SE of height for species A & B - tibble

as_tibble(sampledata)

data <- filter(sampledata, species ! = "C")