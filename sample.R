setwd("C:/Users/fridah.wanjala/Downloads")
library(readxl)
library(dplyr)
df <- read_excel("accounts2.xlsx")

sample <- df %>%
  group_by(month) %>%
  sample_n(30)

write.csv(sample, "C:\\Users\\fridah.wanjala\\Documents\\Work\\CreditAnalysis\\201907_All_UpsellAnalysis\\data\\powerbi.csv")
