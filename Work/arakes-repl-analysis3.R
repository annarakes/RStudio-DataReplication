# Code written by: Anna Rakes
# Last Update: 2024-01-18
# Filename: arakes-repl-analysis3.R


#### Setup ####

rm(list=ls())
options(width = 80)

filename <-"arakes-repl-analysis3.R"

sink(paste(filename, ".log", sep = "")) # create log file to store output

# R version
R.version.string

## Warning: Must install tidyverse package prior to running code

#### Project Code ####

## 0 Load data and check metadata

family12 <- readRDS(file = "arakes-repl-data6.RDS")
comment(family12)

library(tidyverse)

## 1 Father Descriptive Stats by variables

mean(family12$pavisit2, na.rm = TRUE)
sd(family12$pavisit2, na.rm = TRUE)

## 1a Race
stats0 <- select(family12, pavisit2, hispanicB)
stats0_drop <- stats0 %>% 
  drop_na(pavisit2)
prop.table(table(stats0_drop$hispanicB))

stats1 <- select(family12, pavisit2, whiteB)
prop.table(table(stats1$whiteB))

stats2 <- select(family12, pavisit2, blackB)
prop.table(table(stats2$blackB))

## 1b Geo Mob
stats3 <- select(family12, pavisit2, diffcityB)
stats3_drop <- stats3 %>% 
  drop_na(pavisit2)
prop.table(table(stats3_drop$diffcityB))

stats4 <- select(family12, pavisit2, diffstateB)
stats4_drop <- stats4 %>% 
  drop_na(pavisit2)
prop.table(table(stats4_drop$diffstateB))

## 1c Sex
stats5 <- select(family12, pavisit2, femaleB)
stats5_drop <- stats5 %>% 
  drop_na(pavisit2)
prop.table(table(stats5_drop$femaleB))

## 1d Age
stats6 <- select(family12, pavisit2, age)
stats6_drop <- stats6 %>% 
  drop_na(pavisit2)
stats6_num <- as.data.frame(apply(stats6_drop, 2, as.numeric)) 
mean(stats6_num$age, na.rm = TRUE)
sd(stats6_num$age, na.rm = TRUE)

## 1e Marital Status
stats7 <- select(family12, pavisit2, marriedB)
stats7_drop <- stats7 %>% 
  drop_na(pavisit2)
prop.table(table(stats7_drop$marriedB))

## 1f Education
stats8 <- select(family12, pavisit2, educ)
stats8_drop <- stats8 %>% 
  drop_na(pavisit2)
stats8_num <- as.data.frame(apply(stats8_drop, 2, as.numeric)) 
mean(stats8_num$educ, na.rm = TRUE) 
sd(stats8_num$educ, na.rm = TRUE)

## 1g Income
stats9 <- select(family12, pavisit2, RINCOM98)
stats9_drop <- stats9 %>% 
  drop_na(pavisit2)
stats9_num <- as.data.frame(apply(stats9_drop, 2, as.numeric)) 
mean(stats9_num$RINCOM98, na.rm = TRUE)
sd(stats9_num$RINCOM98, na.rm = TRUE)




## 2 Mother Descriptive Stats by Variables

mean(family12$mavisit2, na.rm = TRUE)
sd(family12$mavisit2, na.rm = TRUE)

## 2a Race
stats10a <- select(family12, mavisit2, hispanicB)
stats10_drop <- stats10a %>% 
  drop_na(mavisit2)
prop.table(table(stats10_drop$hispanicB))

stats10b <- select(family12, mavisit2, whiteB)
prop.table(table(stats10b$whiteB))

stats10c <- select(family12, mavisit2, blackB)
prop.table(table(stats10c$blackB))

## 2b Geo Mob
stats11 <- family12 %>%
  select(mavisit2, diffcityB) %>%
  drop_na(mavisit2)
prop.table(table(stats11$diffcityB))

stats12 <- family12 %>%
  select(mavisit2, diffstateB) %>%
  drop_na(mavisit2)
prop.table(table(stats12$diffstateB))

## 2c Sex
stats13 <- family12 %>%
  select(mavisit2, femaleB) %>%
  drop_na(mavisit2)
prop.table(table(stats13$femaleB))

## 2d Age
stats14 <- family12 %>%
  select(mavisit2, age) %>%
  drop_na(mavisit2)
stats14_num <- as.data.frame(apply(stats14, 2, as.numeric)) 
mean(stats14_num$age, na.rm = TRUE)
sd(stats14_num$age, na.rm = TRUE)

## 2e Marital Status
stats15 <- family12 %>%
  select(mavisit2, marriedB) %>%
  drop_na(mavisit2)
prop.table(table(stats15$marriedB))

## 2f Education
stats16 <- family12 %>%
  select(mavisit2, educ) %>%
  drop_na(mavisit2)
stats16_num <- as.data.frame(apply(stats16, 2, as.numeric)) 
mean(stats16_num$educ, na.rm = TRUE)
sd(stats16_num$educ, na.rm = TRUE)

## 2g Income
stats17 <- family12 %>%
  select(mavisit2, RINCOM98) %>%
  drop_na(mavisit2)
stats17_num <- as.data.frame(apply(stats17, 2, as.numeric)) 
mean(stats17_num$RINCOM98, na.rm = TRUE)
sd(stats17_num$RINCOM98, na.rm = TRUE)



## 3 Sibling Descriptive Stats by Variables

mean(family12$sibvisit2, na.rm = TRUE)
sd(family12$sibvisit2, na.rm = TRUE)

## 3a Race
stats18a <- select(family12, sibvisit2, hispanicB)
stats18a_drop <- stats18a %>% 
  drop_na(sibvisit2)
prop.table(table(stats18a_drop$hispanicB))

stats18b <- select(family12, sibvisit2, whiteB)
prop.table(table(stats18b$whiteB))

stats18c <- select(family12, sibvisit2, blackB)
prop.table(table(stats18c$blackB))

## 3b Geo Mob
stats19 <- family12 %>%
  select(sibvisit2, diffcityB) %>%
  drop_na(sibvisit2)
prop.table(table(stats19$diffcityB))

stats20 <- family12 %>%
  select(sibvisit2, diffstateB) %>%
  drop_na(sibvisit2)
prop.table(table(stats20$diffstateB))

## 3c Sex
stats21 <- family12 %>%
  select(sibvisit2, femaleB) %>%
  drop_na(sibvisit2)
prop.table(table(stats21$femaleB))

## 3d Age
stats22 <- family12 %>%
  select(sibvisit2, age) %>%
  drop_na(sibvisit2)
stats22_num <- as.data.frame(apply(stats22, 2, as.numeric)) 
mean(stats22_num$age, na.rm = TRUE)
sd(stats22_num$age, na.rm = TRUE)

## 3e Marital Status
stats23 <- family12 %>%
  select(sibvisit2, marriedB) %>%
  drop_na(sibvisit2)
prop.table(table(stats23$marriedB))

## 3f Education
stats24 <- family12 %>%
  select(sibvisit2, educ) %>%
  drop_na(sibvisit2)
stats24_num <- as.data.frame(apply(stats24, 2, as.numeric)) 
mean(stats24_num$educ, na.rm = TRUE)
sd(stats24_num$educ, na.rm = TRUE)

## 3g Income
stats25 <- family12 %>%
  select(sibvisit2, RINCOM98) %>%
  drop_na(sibvisit2)
stats25_num <- as.data.frame(apply(stats25, 2, as.numeric)) 
mean(stats25_num$RINCOM98, na.rm = TRUE)
sd(stats25_num$RINCOM98, na.rm = TRUE)


## 4 Adult Kid Descriptive Stats by Variables

mean(family12$kidvisit2, na.rm = TRUE)
sd(family12$kidvisit2, na.rm = TRUE)

## 4a Race
stats26a <- select(family12, kidvisit2, hispanicB)
stats26a_drop <- stats26a %>% 
  drop_na(kidvisit2)
prop.table(table(stats26a_drop$hispanicB))

stats26b <- select(family12, kidvisit2, whiteB)
prop.table(table(stats26b$whiteB))

stats26c <- select(family12, kidvisit2, blackB)
prop.table(table(stats26c$blackB))

## 4b Geo Mob
stats27 <- family12 %>%
  select(kidvisit2, diffcityB) %>%
  drop_na(kidvisit2)
prop.table(table(stats27$diffcityB))

stats28 <- family12 %>%
  select(kidvisit2, diffstateB) %>%
  drop_na(kidvisit2)
prop.table(table(stats28$diffstateB))

## 4c Sex
stats29 <- family12 %>%
  select(kidvisit2, femaleB) %>%
  drop_na(kidvisit2)
prop.table(table(stats29$femaleB))

## 4d Age
stats30 <- family12 %>%
  select(kidvisit2, age) %>%
  drop_na(kidvisit2)
stats30_num <- as.data.frame(apply(stats30, 2, as.numeric)) 
mean(stats30_num$age, na.rm = TRUE)
sd(stats30_num$age, na.rm = TRUE)

## 4e Marital Status
stats31 <- family12 %>%
  select(kidvisit2, marriedB) %>%
  drop_na(kidvisit2)
prop.table(table(stats31$marriedB))

## 4f Education
stats32 <- family12 %>%
  select(kidvisit2, educ) %>%
  drop_na(kidvisit2)
stats32_num <- as.data.frame(apply(stats32, 2, as.numeric)) 
mean(stats32_num$educ, na.rm = TRUE)
sd(stats32_num$educ, na.rm = TRUE)

## 4g Income
stats33 <- family12 %>%
  select(kidvisit2, RINCOM98) %>%
  drop_na(kidvisit2)
stats33_num <- as.data.frame(apply(stats33, 2, as.numeric)) 
mean(stats33_num$RINCOM98, na.rm = TRUE)
sd(stats33_num$RINCOM98, na.rm = TRUE)


## 5 aunt/uncle Descriptive Stats by Variables

mean(family12$uncaunts2, na.rm = TRUE)
sd(family12$uncaunts2, na.rm = TRUE)


## 5a Race
stats34a <- select(family12, uncaunts2, hispanicB)
stats34a_drop <- stats34a %>% 
  drop_na(uncaunts2)
prop.table(table(stats34a_drop$hispanicB))

stats34b <- select(family12, uncaunts2, whiteB)
prop.table(table(stats34b$whiteB))

stats34c <- select(family12, uncaunts2, blackB)
prop.table(table(stats34c$blackB))

## 5b Geo Mob
stats35 <- family12 %>%
  select(uncaunts2, diffcityB) %>%
  drop_na(uncaunts2)
prop.table(table(stats35$diffcityB))

stats36 <- family12 %>%
  select(uncaunts2, diffstateB) %>%
  drop_na(uncaunts2)
prop.table(table(stats36$diffstateB))

## 5c Sex
stats37 <- family12 %>%
  select(uncaunts2, femaleB) %>%
  drop_na(uncaunts2)
prop.table(table(stats37$femaleB))

## 5d Age
stats38 <- family12 %>%
  select(uncaunts2, age) %>%
  drop_na(uncaunts2)
stats38_num <- as.data.frame(apply(stats38, 2, as.numeric)) 
mean(stats38_num$age, na.rm = TRUE)
sd(stats38_num$age, na.rm = TRUE)

## 5e Marital Status
stats39 <- family12 %>%
  select(uncaunts2, marriedB) %>%
  drop_na(uncaunts2)
prop.table(table(stats39$marriedB))

## 5f Education
stats40 <- family12 %>%
  select(uncaunts2, educ) %>%
  drop_na(uncaunts2)
stats40_num <- as.data.frame(apply(stats40, 2, as.numeric)) 
mean(stats40_num$educ, na.rm = TRUE)
sd(stats40_num$educ, na.rm = TRUE)

## 5g Income
stats41 <- family12 %>%
  select(uncaunts2, RINCOM98) %>%
  drop_na(uncaunts2)
stats41_num <- as.data.frame(apply(stats41, 2, as.numeric)) 
mean(stats41_num$RINCOM98, na.rm = TRUE)
sd(stats41_num$RINCOM98, na.rm = TRUE)


## 6 niece/nephew Descriptive Stats by Variables

mean(family12$niecenep2, na.rm = TRUE)
sd(family12$niecenep2, na.rm = TRUE)

## 6a Race
stats42a <- select(family12, niecenep2, hispanicB)
stats42a_drop <- stats42a %>% 
  drop_na(niecenep2)
prop.table(table(stats42a_drop$hispanicB))

stats42b <- select(family12, niecenep2, whiteB)
prop.table(table(stats42b$whiteB))

stats42c <- select(family12, niecenep2, blackB)
prop.table(table(stats42c$blackB))

## 6b Geo Mob
stats43 <- family12 %>%
  select(niecenep2, diffcityB) %>%
  drop_na(niecenep2)
prop.table(table(stats43$diffcityB))

stats44 <- family12 %>%
  select(niecenep2, diffstateB) %>%
  drop_na(niecenep2)
prop.table(table(stats44$diffstateB))

## 6c Sex
stats45 <- family12 %>%
  select(niecenep2, femaleB) %>%
  drop_na(niecenep2)
prop.table(table(stats45$femaleB))

## 6d Age
stats46 <- family12 %>%
  select(niecenep2, age) %>%
  drop_na(niecenep2)
stats46_num <- as.data.frame(apply(stats46, 2, as.numeric)) 
mean(stats46_num$age, na.rm = TRUE)
sd(stats46_num$age, na.rm = TRUE)

## 6e Marital Status
stats47 <- family12 %>%
  select(niecenep2, marriedB) %>%
  drop_na(niecenep2)
prop.table(table(stats47$marriedB))

## 6f Education
stats48 <- family12 %>%
  select(niecenep2, educ) %>%
  drop_na(niecenep2)
stats48_num <- as.data.frame(apply(stats48, 2, as.numeric)) 
mean(stats48_num$educ, na.rm = TRUE)
sd(stats48_num$educ, na.rm = TRUE)

## 6g Income
stats49 <- family12 %>%
  select(niecenep2, RINCOM98) %>%
  drop_na(niecenep2)
stats49_num <- as.data.frame(apply(stats49, 2, as.numeric)) 
mean(stats49_num$RINCOM98, na.rm = TRUE)
sd(stats49_num$RINCOM98, na.rm = TRUE)


## 7 cousins Descriptive Stats by Variablees

mean(family12$cousins2, na.rm = TRUE)
sd(family12$cousins2, na.rm = TRUE)

## 7a Race
stats50a <- select(family12, cousins2, hispanicB)
stats50a_drop <- stats50a %>% 
  drop_na(cousins2)
prop.table(table(stats50a_drop$hispanicB))

stats50b <- select(family12, cousins2, whiteB)
prop.table(table(stats50b$whiteB))

stats50c <- select(family12, cousins2, blackB)
prop.table(table(stats50c$blackB))

## 7b Geo Mob
stats51 <- family12 %>%
  select(cousins2, diffcityB) %>%
  drop_na(cousins2)
prop.table(table(stats51$diffcityB))

stats52 <- family12 %>%
  select(cousins2, diffstateB) %>%
  drop_na(cousins2)
prop.table(table(stats52$diffstateB))

## 7c Sex
stats53 <- family12 %>%
  select(cousins2, femaleB) %>%
  drop_na(cousins2)
prop.table(table(stats53$femaleB))

## 7d Age
stats54 <- family12 %>%
  select(cousins2, age) %>%
  drop_na(cousins2)
stats54_num <- as.data.frame(apply(stats54, 2, as.numeric)) 
mean(stats54_num$age, na.rm = TRUE)
sd(stats54_num$age, na.rm = TRUE)

## 7e Marital Status
stats55 <- family12 %>%
  select(cousins2, marriedB) %>%
  drop_na(cousins2)
prop.table(table(stats55$marriedB))

## 7f Education
stats56 <- family12 %>%
  select(cousins2, educ) %>%
  drop_na(cousins2)
stats56_num <- as.data.frame(apply(stats56, 2, as.numeric)) 
mean(stats56_num$educ, na.rm = TRUE)
sd(stats56_num$educ, na.rm = TRUE)

## 7g Income
stats57 <- family12 %>%
  select(cousins2, RINCOM98) %>%
  drop_na(cousins2)
stats57_num <- as.data.frame(apply(stats57, 2, as.numeric)) 
mean(stats57_num$RINCOM98, na.rm = TRUE)
sd(stats57_num$RINCOM98, na.rm = TRUE)



# close log
sink()
