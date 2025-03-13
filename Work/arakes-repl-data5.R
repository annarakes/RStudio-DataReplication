# Code written by: Anna Rakes
# Last Update: 2024-01-17
# Filename: arakes-repl-data5.R


#### Setup ####

rm(list=ls())
options(width = 80)

filename <-"arakes-repl-data5.R"

sink(paste(filename, ".log", sep = "")) # create log file to store output

# R version
R.version.string

## Warning: Must install tidyverse package prior to running code

#### Project Code ####

## 0 Load data and check metadata

family11 <- readRDS(file = "arakes-repl-data5.RDS")
comment(family11)

library(tidyverse)



## 1 Create Extended Family Index

family12 <- mutate(family11, extfamily = rowMeans(select(family11, cousins2:uncaunts2), na.rm = TRUE))




## 2 Convert variables used in regression model to numeric

family12$age = as.numeric(as.character(family12$age)) 
family12$educ = as.numeric(as.character(family12$educ))
family12$RINCOM98 = as.numeric(as.character(family12$RINCOM98)) 




## 3 Internal documentation

comment(family12$extfamily) <- "Average of extended family variables / arakes-repl-data5.R / AMR / 2024-01-17"

comment(family12) <- c(comment(family12), 
                       "Final dataset with extended family variable / arakes-repl-data5.R / AMR / 2024-01-17")



## 4 Run diagnostics to check overall descriptive statistics

descstats = data.frame()
family13 <-select(family12, kidvisit2, sibvisit2, pavisit2, mavisit2, cousins2, niecenep2, uncaunts2, nucfamily, extfamily)

for(i in 1:ncol(family13)){
  variables = (colnames(family13)[i])
  means = round(mean(family13[,i], na.rm = TRUE), digits = 3)
  std = round(sd(family13[,i], na.rm = TRUE), digits = 3)
  descstats = rbind(descstats, c(variables, means,std))
}
colnames(descstats) <- c("Variables", "Means", "StandardDev")



## 5 Save the data

saveRDS(family12, "arakes-repl-data6.RDS") # as RDS




# close log
sink()
