# Code written by: Anna Rakes
# Last Update: 2024-01-16
# Filename: arakes-repl-data3.R


#### Setup ####

rm(list=ls())
options(width = 80)

filename <-"arakes-repl-data3.R"

sink(paste(filename, ".log", sep = "")) # create log file to store output

# R version
R.version.string

## Warning: Must install tidyverse package prior to running code

#### Project Code ####

## 0 Load data and check metadata

family07 <- readRDS(file = "arakes-repl-data3.RDS")
comment(family07)

library(tidyverse)



## 1 Recode kidvisit variable

family07$kidvisit2 <- ifelse(family07$kidvisit == '1', 6,
                             ifelse(family07$kidvisit == '2', 6,
                                    ifelse(family07$kidvisit == '3', 5,
                                           ifelse(family07$kidvisit == '4',4,
                                                  ifelse(family07$kidvisit == '5', 3,
                                                         ifelse(family07$kidvisit == '6', 2,
                                                                ifelse(family07$kidvisit == '7', 1,
                                                                       ifelse(family07$kidvisit == '9', NA,
                                                                              ifelse(family07$kidvisit == '0', NA, NA)))))))))





## 2 Recode sibvisit variable

family07$sibvisit2 <- ifelse(family07$sibvisit == '1', 6,
                             ifelse(family07$sibvisit == '2', 6,
                                    ifelse(family07$sibvisit == '3', 5,
                                           ifelse(family07$sibvisit == '4', 4,
                                                  ifelse(family07$sibvisit == '5', 3,
                                                         ifelse(family07$sibvisit == '6', 2,
                                                                ifelse(family07$sibvisit == '7', 1,
                                                                       ifelse(family07$sibvisit == '9', NA,
                                                                              ifelse(family07$sibvisit == '0', NA, NA)))))))))
                               
                              



## 3 Recode pavisit1 variable

family07$pavisit2 <- ifelse(family07$PAVISIT1 == '1', 6,
                             ifelse(family07$PAVISIT1 == '2', 6,
                                    ifelse(family07$PAVISIT1 == '3', 5,
                                           ifelse(family07$PAVISIT1 == '4',4,
                                                  ifelse(family07$PAVISIT1 == '5', 3,
                                                         ifelse(family07$PAVISIT1 == '6', 2,
                                                                ifelse(family07$PAVISIT1 == '7', 1,
                                                                       ifelse(family07$PAVISIT1 == '8', 1,
                                                                              ifelse(family07$PAVISIT1 == '9', NA,
                                                                                     ifelse(family07$PAVISIT1 == '10', NA,
                                                                                             ifelse(family07$PAVISIT1 == '0', NA,
                                                                                                    ifelse(family07$PAVISIT1 == '99', NA, NA))))))))))))
                                                                       




## 4 Recode mavisit1 variable

family07$mavisit2 <- ifelse(family07$MAVISIT1 == '1', 6,
                            ifelse(family07$MAVISIT1 == '2', 6,
                                   ifelse(family07$MAVISIT1 == '3', 5,
                                          ifelse(family07$MAVISIT1 == '4',4,
                                                 ifelse(family07$MAVISIT1 == '5', 3,
                                                        ifelse(family07$MAVISIT1 == '6', 2,
                                                               ifelse(family07$MAVISIT1 == '7', 1,
                                                                      ifelse(family07$MAVISIT1 == '8', 1,
                                                                             ifelse(family07$MAVISIT1 == '9', NA,
                                                                                    ifelse(family07$MAVISIT1 == '10', NA,
                                                                                           ifelse(family07$MAVISIT1 == '0', NA,
                                                                                                  ifelse(family07$MAVISIT1 == '99', NA, NA))))))))))))




## 5 Recode cousins variable

family07$cousins2 <- ifelse(family07$cousins == '1', 3,
                             ifelse(family07$cousins == '2', 2,
                                    ifelse(family07$cousins == '3', 1,
                                           ifelse(family07$cousins == '4',NA,
                                                  ifelse(family07$cousins == '8', NA,
                                                         ifelse(family07$cousins == '9', NA,
                                                                ifelse(family07$cousins == '0', NA, NA)))))))




## 6 Recode niecenep variable

family07$niecenep2 <- ifelse(family07$niecenep == '1', 3,
                            ifelse(family07$niecenep == '2', 2,
                                   ifelse(family07$niecenep == '3', 1,
                                          ifelse(family07$niecenep == '4',NA,
                                                 ifelse(family07$niecenep == '8', NA,
                                                        ifelse(family07$niecenep == '9', NA,
                                                               ifelse(family07$niecenep == '0', NA, NA)))))))




## 7 Recode uncaunts variable

family07$uncaunts2 <- ifelse(family07$uncaunts == '1', 3,
                             ifelse(family07$uncaunts == '2', 2,
                                    ifelse(family07$uncaunts == '3', 1,
                                           ifelse(family07$uncaunts == '4',NA,
                                                  ifelse(family07$uncaunts == '8', NA,
                                                         ifelse(family07$uncaunts == '9', NA,
                                                                ifelse(family07$uncaunts == '0', NA, NA)))))))




## 8 Internal Documentation
comment(family07$kidvisit2) <-
  "New scale for kidvisit variable / arakes-repl-data3.R / AMR / 2024-01-16"

comment(family07$sibvisit2) <-
  "New scale for sibvisit variable / arakes-repl-data3.R / AMR / 2024-01-16"

comment(family07$pavisit2) <-
  "New scale for pavisit1 variable / arakes-repl-data3.R / AMR / 2024-01-16"

comment(family07$mavisit2) <-
  "New scale for mavisit1 variable / arakes-repl-data3.R / AMR / 2024-01-16"

comment(family07$cousins2) <-
  "New scale for cousins variable / arakes-repl-data3.R / AMR / 2024-01-16"

comment(family07$niecenep2) <-
  "New scale for niecenep variable / arakes-repl-data3.R / AMR / 2024-01-16"

comment(family07$uncaunts2) <-
  "New scale for uncaunts variable / arakes-repl-data3.R / AMR / 2024-01-16"

comment(family07) <- c(comment(family07), 
                       "Updated data with family variables recoded / arakes-repl-data3.R / AMR / 2024-01-16")


## 9 Run Diagnostics comparing original family variable to recoded family variable
table(family07$kidvisit2, useNA = "ifany")
table(family07$kidvisit, useNA = "ifany")

table(family07$sibvisit2, useNA = "ifany")
table(family07$sibvisit, useNA = "ifany")

table(family07$pavisit2, useNA = "ifany")
table(family07$PAVISIT1, useNA = "ifany")

table(family07$mavisit2, useNA = "ifany")
table(family07$MAVISIT1, useNA = "ifany")

table(family07$cousins2, useNA = "ifany")
table(family07$cousins, useNA = "ifany")

table(family07$niecenep2, useNA = "ifany")
table(family07$niecenep, useNA = "ifany")

table(family07$uncaunts2, useNA = "ifany")
table(family07$uncaunts, useNA = "ifany")


## 10 Overall Descriptive Statistics to compare to original sample

summary(family07$year)
min(family07$age)
summary(family07$whiteB)
summary(family07$blackB)
summary(family07$femaleB)
summary(family07$marriedB)
summary(family07$diffcityB)
summary(family07$diffstateB)




## 11 Save new dataset

saveRDS(family07, "arakes-repl-data4.RDS") # as RDS




# close log
sink()
  

