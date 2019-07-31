## Code to sample from a file
library(readxl)
library(dplyr)
library(openxlsx)

## Import the file
df <- read_excel("accounts2.xlsx")

## Sample
samplen <- df %>%
  group_by(month) %>%
  sample_n(30)

## Write to csv
write.csv(sample, "powerbi.csv")

## Write to xlsx
write.xlsx(sample, "powerbi.xlsx")

## Sample using percentages
samplep <- df %>%
  group_by(month) %>%
  sample_n(30.3)
