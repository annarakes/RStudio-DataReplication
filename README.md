# RStudio Methods for Data Analytics Data Replication Project

This document contains necessary information pertaining to the replication of Joseph
Comeau’s “Race/Ethnicity and Family Contact: Toward a Behavioral Measure of Familialism”
by Anna Rakes. The following documentation was created using R Studio version 4.2.2.
# Documentation Needed
To reproduce the results the GSS dataset, titled gss7218_R1.RDS, must be downloaded into the
same folder as the following documents, located in the /Script Files folder. The following
documents must be run in this exact order:
1. arakes-repl-data1.R: selected only needed observations and variables
2. arakes-repl-data2.R: created dummy variables for race, sex, marriage, and geo mobility
3. arakes-repl-data3.R: recoded individual family category variables
4. arakes-repl-data4.R: created nuclear family index
5. arakes-repl-data5.R: created extended family index, and converted variables to numeric
6. arakes-repl-analysis1.R: produced descriptive statistics for nuclear family index
7. arakes-repl-analysis2.R: produced descriptive statistics for extended family index
8. arakes-repl-analysis3.R: produced descriptive statistics for each family variable
9. arakes-repl-analysis4.R: produced regression models for each family variable
# Run Code
Once again, the above nine documents must be located in the same folder as the GSS dataset. For
each document, you must set the working directory to source file location. Prior to running the
first document, you must also install the tidyverse package in R Studio. Once that is complete,
you can then run each of the documents above one by one, in their numbered order. 
