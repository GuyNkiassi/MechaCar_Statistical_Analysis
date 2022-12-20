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

#Deliverable 2: Create Visualizations for the Trip Analysis

#Import and Read the CSV File as DataFrame
Coil_Data <- read.csv('Suspension_Coil.csv')

total_summary <- Coil_Data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep")
