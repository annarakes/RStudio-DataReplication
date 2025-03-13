# Code written by: Anna Rakes
# Last Update: 2024-01-18
# Filename: arakes-repl-analysis4.R


#### Setup ####

rm(list=ls())
options(width = 80)

filename <-"arakes-repl-analysis4.R"

sink(paste(filename, ".log", sep = "")) # create log file to store output

# R version
R.version.string


#### Project Code ####

## 0 Load data and check metadata

family12 <- readRDS(file = "arakes-repl-data6.RDS")
comment(family12)


## 1 Nuclear family index regression model
nucmod <- lm(nucfamily ~ whiteB + blackB + diffcityB + diffstateB + femaleB + 
               age + marriedB + educ + RINCOM98, data = family12)
summary(nucmod)


## 2 Extended family index regression model
extmod <- lm(extfamily ~ whiteB + blackB + diffcityB + diffstateB + femaleB + 
               age + marriedB + educ + RINCOM98, data = family12)
summary(extmod)


## 3 Father Regression Model
dadmod <- lm(pavisit2 ~ whiteB + blackB + diffcityB + diffstateB + femaleB + 
               age + marriedB + educ + RINCOM98, data = family12)
summary(dadmod)


## 4 Mother Regression Model
mommod <- lm(mavisit2 ~ whiteB + blackB + diffcityB + diffstateB + femaleB + 
               age + marriedB + educ + RINCOM98, data = family12)
summary(mommod)


## 5 Sibling Regression Model
sibmod <- lm(sibvisit2 ~ whiteB + blackB + diffcityB + diffstateB + femaleB + 
               age + marriedB + educ + RINCOM98, data = family12)
summary(sibmod)


## 6 Adult Child Regression Model
kidmod <- lm(kidvisit2 ~ whiteB + blackB + diffcityB + diffstateB + femaleB + 
               age + marriedB + educ + RINCOM98, data = family12)
summary(kidmod)


## 7 Aunt/Uncle Regression Model
uncmod <- lm(uncaunts2 ~ whiteB + blackB + diffcityB + diffstateB + femaleB + 
               age + marriedB + educ + RINCOM98, data = family12)
summary(uncmod)


## 8 Nephew/Nice Regression Model
nepmod <- lm(niecenep2 ~ whiteB + blackB + diffcityB + diffstateB + femaleB + 
               age + marriedB + educ + RINCOM98, data = family12)
summary(nepmod)


## 9 Cousins Regression Model
cousmod <- lm(cousins2 ~ whiteB + blackB + diffcityB + diffstateB + femaleB + 
               age + marriedB + educ + RINCOM98, data = family12)
summary(cousmod)


# close log
sink()

