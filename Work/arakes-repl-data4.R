# Code written by: Anna Rakes
# Last Update: 2024-01-16
# Filename: arakes-repl-data4.R


#### Setup ####

rm(list=ls())
options(width = 80)

filename <-"arakes-repl-data4.R"

sink(paste(filename, ".log", sep = "")) # create log file to store output

# R version
R.version.string

## Warning: Must install tidyverse package prior to running code

#### Project Code ####

## 0 Load data and check metadata

family08 <- readRDS(file = "arakes-repl-data4.RDS")
comment(family08)

library(tidyverse)



## 1 Create Entire Family Index

family09 <- mutate(family08, wholefam = rowMeans(select(family08, kidvisit2:uncaunts2), na.rm = TRUE))

family10 <- family09 %>% 
  drop_na(wholefam)


## 2 Create Nuclear family index


family11 <- mutate(family10, nucfamily = rowMeans(select(family10, kidvisit2:mavisit2), na.rm = TRUE))




## 3 Internal documentation - add metadata

comment(family11$wholefam) <- "Average of all family variables / arakes-repl-data4.R / AMR / 2024-01-17"

comment(family11$nucfamily) <- "Average of nuclear family variable / arakes-repl-data4.R / AMR / 2024-01-17"


comment(family11) <- c(comment(family11), 
                         "Updated data with nuclear family index / arakes-repl-data4.R / AMR / 2024-01-17")


## 4 Run diagnostics

table(family11$nucfamily)



## 5 Save the data

saveRDS(family11, "arakes-repl-data5.RDS")




# close log
sink()

