# MechaCar_Statistical_Analysis
## Overview of Project
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.  We need to review the production data for insights that may help the manufacturing team. To do this we will:
*  Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
*  Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
*  Run t-tests to determine if the manufacturing lots are statistically different from the mean population
*  Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Analysis
### Linear Regression to Predict MPG:
The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.
Using linear regression we determined that the vehicle length and ground clearance provide a non-random amount of variance to the mpg of the vehicle. The other variables vehcile weight, spoiler angle, and drive type do not significantly infulence the mpg of the vehicle. The slope of the multiple regression model is not considered to be zero because there is correlation between the variables and the mpg of the vehicles. We can use this model to predict the mpg of a vehicle. The R-squared vaule of .7149 means that 71.5% of our datapoints fit in our model. The p-value of 5.35e-11 means that there is less than .000000005% chance that our prediction will be wrong. 
![MPG linear regression summary](https://user-images.githubusercontent.com/86027932/135778479-009c028c-b717-4fed-b658-da7e57de018e.png)




### Summary Statistics on Suspension Coils:
The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. 
The mean PSI for all suspension coils is 1498.78 and the median PSI for all suspension coils is 1500 which indicates that sample is normally distributed. The variance of 62.29 is pretty high, but within the design specs. Lots 1 & 2 are much more standardized; however, Lot 3 has a variance of 170.29 and a standard diviation of 13.05 which indicates that there were manufactuing issues with Lot 3.
![Suspension Coil Total Summary](https://user-images.githubusercontent.com/86027932/135778554-0dc6f5ca-b37c-4ed2-a73a-d5c714c540aa.png)![Suspension Coil Lot Summary](https://user-images.githubusercontent.com/86027932/135778560-f44cdb46-739f-4c00-a3c2-945e8c585310.png)

## T-Tests on Suspension Coils
Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.
The null hypothesis is that the true mean of the sample is equal to the population mean of 1500PSI.
For the total sample we can not reject the null hypothesis because the p-value of the test is .06028 which is not less than .05. The sample mean is 1498.78; which is not 1500.
The p-value for Lot 1 is 1 which indictes that the sample mean is the same as the poplulation mean. 
The p-value for Lot 2 is .6072; we can't rejecte the null hypothesis.
The p-value for Lot 3 is .0417 which is less than .05. We rejecte the null hypothesis that the mean of our sample is equal to 1500.
The means of the overall sample, and of Lots 1 & 2 might be 1500 if the samples were larger. The mean of Lot 3 varies greatly from the poplulation mean of 1500PSI.
![t-test](https://user-images.githubusercontent.com/86027932/135781221-8ad11068-e924-45fc-9879-a5a63b750a23.png)

## Study Design: MechaCar vs Competition
To study how MechaCar compares to cars from other manufacturers we should compare variables that most consumers would find beneficial; city and highway fuel efficiency, safety-rating, and maintainance costs To compare fuel efficiency, safety ratings, and maintainance costs we would need the data for each model for the last 5 years. Summarize the data for each type of vehicle from each manufacturer. Then do a t-test across all manufactures to determine if any differences in mean fuel efficiency and safety rating is statistically significant. The null hypothesis for evaluating fuel efficiency and safety ratings woudl be that the average fuel efficiency/safety-rating is lower than that of our competitors, the alternative would therefore be that ours is higher. The null hypothsis for testign maintainance costs would be that our costs are higher than our competitors and teh alternative is that our costs are lower. 




