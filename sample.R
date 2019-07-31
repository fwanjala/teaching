## Code to sample from a file
library(readxl)
library(dplyr)
library(openxlsx)

## Import the file
df <- read_excel("accounts2.xlsx")

## Sample
sample <- df %>%
  group_by(month) %>%
  sample_n(30)

## Write to csv
write.csv(sample, "powerbi.csv")

## Write to xlsx
write.xlsx(sample, "powerbi.xlsx")
