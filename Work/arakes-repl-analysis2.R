# Code written by: Anna Rakes
# Last Update: 2024-01-18
# Filename: arakes-repl-analysis2.R


#### Setup ####

rm(list=ls())
options(width = 80)

filename <-"arakes-repl-analysis2.R"

sink(paste(filename, ".log", sep = "")) # create log file to store output

# R version
R.version.string

## Warning: Must install tidyverse package prior to running code

#### Project Code ####

## 0 Load data and check metadata

family12 <- readRDS(file = "arakes-repl-data6.RDS")
comment(family12)

library(tidyverse)

#### Extended Family Variable Desc Stats ####


## 1 Overall Stats
mean(family12$extfamily, na.rm = TRUE)
sd(family12$extfamily, na.rm = TRUE)


## 2 Race stats for Ext Family
stats0 <- select(family12, extfamily, hispanicB)
stats0_drop <- stats0 %>% 
  drop_na(extfamily)
prop.table(table(stats0_drop$hispanicB))

stats1 <- select(family12, extfamily, whiteB)
prop.table(table(stats1$whiteB))

stats2 <- select(family12, extfamily, blackB)
prop.table(table(stats2$blackB))


## 3 Geographic Mobility for Ext Family
stats3 <- select(family12, extfamily, diffcityB)
stats3_drop <- stats3 %>% 
  drop_na(extfamily)
prop.table(table(stats3_drop$diffcityB))

stats4 <- select(family12, extfamily, diffstateB)
stats4_drop <- stats4 %>% 
  drop_na(extfamily)
prop.table(table(stats4_drop$diffstateB))


## 4 Sex variable for Ext Family
stats5 <- select(family12, extfamily, femaleB)
stats5_drop <- stats5 %>% 
  drop_na(extfamily)
prop.table(table(stats5_drop$femaleB))


## 5 Age variable for Ext Family
stats6 <- select(family12, extfamily, age)
stats6_drop <- stats6 %>% 
  drop_na(extfamily)
stats6_num <- as.data.frame(apply(stats6_drop, 2, as.numeric)) 
mean(stats6_num$age, na.rm = TRUE)
sd(stats6_num$age, na.rm = TRUE)


## 6 Marital status for Ext Family
stats7 <- select(family12, extfamily, marriedB)
stats7_drop <- stats7 %>% 
  drop_na(extfamily)
prop.table(table(stats7_drop$marriedB))


## 7 Education variable for Ext Family
stats8 <- select(family12, extfamily, educ)
stats8_drop <- stats8 %>% 
  drop_na(extfamily)
stats8_num <- as.data.frame(apply(stats8_drop, 2, as.numeric)) 
mean(stats8_num$educ, na.rm = TRUE) 
sd(stats8_num$educ, na.rm = TRUE)


## 8 Income variable for Ext Family
stats9 <- select(family12, extfamily, RINCOM98)
stats9_drop <- stats9 %>% 
  drop_na(extfamily)
stats9_num <- as.data.frame(apply(stats9_drop, 2, as.numeric)) 
mean(stats9_num$RINCOM98, na.rm = TRUE)
sd(stats9_num$RINCOM98, na.rm = TRUE)




# close log
sink()
