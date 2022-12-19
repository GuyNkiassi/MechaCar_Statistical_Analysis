#Deliverable 1: Linear Regression to Predict MPG
#Load necessary packages
Library(dplyr)
library(tidyverse)
#Import and Read the CSV File as Data Frame
mecha_dat <- read.csv('Mechacar_mpg.csv', stringsAsFactors = F,check.names = F)
head(mecha_dat)
#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =mecha_dat)
#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =mecha_dat)) 