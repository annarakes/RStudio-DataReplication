# Code written by: Anna Rakes
# Last Update: 2024-01-14
# Filename: arakes-repl-data1.R


#### Setup ####

rm(list=ls())
options(width = 80)

filename <-"arakes-repl-data1.R"

sink(paste(filename, ".log", sep = "")) # create log file to store output

# R version
R.version.string


## Warning: Must install tidyverse package prior to running code

#### Project Code ####

## 0 Load data and check metadata

og_data <- readRDS(file = "gss7218_R1.RDS")

comment(og_data) 

library(tidyverse)


## 1 Select observations

family01 <- og_data %>%
  filter(year == "2002")

## 2 Select variables

family02 <- family01 %>%
  select(year, wtssall, RACECEN1, RACECEN2, RACECEN3, age, sibvisit,
         kidvisit, PAVISIT1, MAVISIT1, cousins, uncaunts, niecenep, sex, marital,
         MOBILE16, educ, RINCOM98)


## 3 Subset age variable

family03 <- family02 %>%
  filter(age >= 18)


## 4 Subset race variables
family04 <- family03 %>%
  filter(RACECEN1 == 1 | RACECEN1 == 2 | RACECEN1 == 16)

family05 <- family04 %>%
  filter(RACECEN2 != 16,
         RACECEN3 != 16)


## 5 Internal Documentation

comment(family01) <-
  "subset data to only include year 2002 / arakes-repl-data1.R / AMR / 2024-01-14"

comment(family02) <-
  "subset data to include possible variables / arakes-repl-data1.R / AMR / 2024-01-14"

comment(family03) <-
  "subset age to 18 and older / arakes-repl-data1.R / AMR / 2024-01-14"

comment(family05) <- "Dataset with select observations and variables
/ arakes-repl-data1.R / AMR / 2024-01-14"


## 6 Run diagnostics for race variable

table(family05$RACECEN1)
table(family05$RACECEN2)
table(family05$RACECEN3)


## 7 Save New Dataset

saveRDS(family05, "arakes-repl-data2.RDS") # as RDS




# close log
sink()

