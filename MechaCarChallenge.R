library(dplyr)
#read in MPG csv file
mpg <- read.csv("MechaCar_mpg.csv", header = TRUE)
#perform linear regression on mpg dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg)

#summarize the multiple linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg))

# read in the suspension coil dataset
sus_coil <- read.csv("Suspension_Coil.csv", header = TRUE)
#create dataframe of the summary statistics of the suspension coil dataset
total_summary <- data.frame(sus_coil %>% summarize(Mean=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI),SD=sd(PSI)))
lot_summary <- data.frame(sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI),SD=sd(PSI))) #create summary table with multiple columns

t.test(sus_coil$PSI, mu=1500)
t.test(formula = PSI ~ 1, data = sus_coil, mu=1500, subset = Manufacturing_Lot == "Lot1")
t.test(formula = PSI ~ 1, data = sus_coil, mu=1500, subset = Manufacturing_Lot == "Lot2")
t.test(formula = PSI ~ 1, data = sus_coil, mu=1500, subset = Manufacturing_Lot == "Lot3")