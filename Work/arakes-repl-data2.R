# Code written by: Anna Rakes
# Last Update: 2024-01-16
# Filename: arakes-repl-data2.R


#### Setup ####

rm(list=ls())
options(width = 80)

filename <-"arakes-repl-data2.R"

sink(paste(filename, ".log", sep = "")) # create log file to store output

# R version
R.version.string

## Warning: Must install tidyverse package prior to running code

#### Project Code ####

## 0 Load data and check metadata

family06 <- readRDS(file = "arakes-repl-data2.RDS")
comment(family06)

library(tidyverse)


## 1 Create race dummy variables and overall race variable

family06$whiteB <- ifelse(family06$RACECEN1 == "1", 1,
                          ifelse(family06$RACECEN1 == "16", 0,
                                 ifelse(family06$RACECEN1 == "2", 0, 0)))

family06$blackB <- ifelse(family06$RACECEN1 == "2", 1,
                          ifelse(family06$RACECEN1 == "16", 0,
                                 ifelse(family06$RACECEN1 == "1", 0, 0)))

family06$hispanicB <- ifelse(family06$RACECEN1 == "1", 1,
                          ifelse(family06$RACECEN1 == "2", 2,
                                 ifelse(family06$RACECEN1 == "16", 0, 0)))



## 2 Create sex dummy variable

family06$femaleB <- ifelse(family06$sex == "2", 1, 0 )


## 3 Create marital dummy variable

family06$marriedB <- ifelse(family06$marital == "1" | 
                              family06$marital == "2" 
                            | family06$marital == "3" 
                            | family06$marital == "4", 1, 0)


## 4 Create geo mob dummy variables

family06$diffcityB <- ifelse(family06$MOBILE16 == "2", 1, 0)

family06$diffstateB <- ifelse(family06$MOBILE16 == "3", 1, 0)


## 5 Internal Documentation

comment(family06$whiteB) <-
  "dummy variable for white or hispanic / arakes-repl-data2.R / AMR / 2024-01-16"

comment(family06$blackB) <-
  "dummy variables for black or hispanic / arakes-repl-data2.R / AMR / 2024-01-16"

comment(family06$hispanicB) <-
  "race variable with white, black, hispanic / arakes-repl-data2.R / AMR / 2024-01-16"

comment(family06$femaleB) <-
  "dummy variable for sex / arakes-repl-data2.R / AMR / 2024-01-16"

comment(family06$marriedB) <-
  "dummy variable for marriage status / arakes-repl-data2.R / AMR / 2024-01-16"

comment(family06$diffcityB) <-
  "same state diff city dummy variable / arakes-repl-data2.R / AMR / 2024-01-16"

comment(family06$diffstateB) <-
  "different city dummy variable / arakes-repl-data2.R / AMR / 2024-01-16"

comment(family06) <- c(comment(family06), 
                         "Updated data with dummy variables / arakes-repl-data2.R / AMR / 2024-01-16")


## 6 Run Diagnostics comparing original variables to new dummy variables

table(family06$whiteB)
table(family06$blackB)
table(family06$hispanicB)


table(family06$marital)
table(family06$marriedB)


table(family06$MOBILE16)
table(family06$diffcityB)
table(family06$diffstateB)




## 7 Save New dataset

saveRDS(family06, "arakes-repl-data3.RDS") # as RDS



# close log
sink()

