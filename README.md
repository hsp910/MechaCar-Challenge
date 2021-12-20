# MechaCar Statistical Analysiss

## Overview

The fictional company, AutosRUs, has created a new prototyped dubbed the MechaCar. The MechaCar is currently suffering from production troubles that are blocking the manufacturing team's progress. AutosRUs' senior management has enlisted the assitance of a data analytics team to review the production data for insights that may help the manufacturing team overcome their current production issues.

To help analyze the current production issues the data analytics team provided the following insights using R:
- Multiple linear regression analysis to determine which variables in the dataset predict MPG of the MechaCar prototypes created thus far.
- Summary statistics on the PSI(pounds per square inch) of the suspension coils from each individual manufacturing lot
- T-tests on the mean population in order to determine which manufacturing lots are statistically different
- Designed a statistical study to compare vehicle performance of MechaCar vehicles against Vehicles from other manufacturers. 

Technologies used included RStudio and two packages; dplyr and ggplot2. The two csv files included within the Resources folder were used to create analysis detailed below.

## Linear Regression to Predict MPG
There were 3 variables provided in our data set that determined a non random amount of variance to the mpg values in the data set. 

- Vehicle Length
- Vehicle Weight
- Ground Clearance

The p-value of this multiple linear regression, as shown below, is roughly 5.35X10(-11), which is much smaller than the assumed significance level of 0.005%. Therefore, there is more than sufficient evidence to reject the null hypothesis since the slope of the linear model is not zero either.

![Linear Regression Image](https://i.imgur.com/7zzGIqI.png)

This linear model predicts that roughly 71.5% of MPG predictions of random MechaCar protoypes will be correct when suing this model. The R-Squared value, of 0.715, also suggests that there is a positive correlation between MPG and the variables of vehicle length, vehicle weight, spoiler angle, ground celarance, and AWD(All Wheel Drive).

## Summary Statistics on Suspension Coils

Design specificiations for the protoypes of the MechaCar dictate that the variance allowed between suspsension coils must not exceed 100 PSI.

According to the total summary gathered from the 3 lots, the total variance between all of them was roughly 62.29. This is still less than the 100 PSI variance allowed within the initial protoype designs. 

![Total Summary](https://i.imgur.com/yh7PKSN.png)

However the variance of each lot must also be examined to make certain that all the lots individually also pass this level of scrutiny. Once analyzed by lot we see that lots 1 and 2 both continue to pass muster with variances under 100 PSI, but lot 3 actually has a variance of 170.28. This means that lot 3 is actually a lot where the variance on the suspension coils far exceeds the set limits in the prototype designs.

![Lot Summary](https://i.imgur.com/IgOzy2E.png)

## T-Tests on Suspension Coils

A one-sample t-test was used to determine whether or not if suspension coil limits, in PSI, were statistically different across all the manufacturing lots from the population mean of 1500 PSI.

The distribution of the suspension coil data set was first visualized with a density plot, which shows that the suspension coil dataset is nearly evently distributed.

![PSI Chart](https://i.imgur.com/QJzW37s.png)

For all t-tests conducted the significance level was 0.05 percent. The first t-test compared the means of all of the manufacturing lots, 1498.78, against a mean of 1500. All t-tests conducted resulted in the means being statistically similar. 

![PSI Summary](https://i.imgur.com/7ehmniV.png)

A t-test across all the suspension coil manufacturing lots gave a p-value of 0.06. While slim, the value is still above signifigance level and therefore the two means are statistically similar.

![Lot 1 Summary](https://i.imgur.com/Yto3BIK.png)

A t-test for lot 1 gave a p-value of 1, which is above the significance value. The two means are statistically similar.

![Lot 2 Summary](https://i.imgur.com/lzbwwzh.png)

The p-value of lot 2 is also 0.06, and just as before this means the value is above signifigance level. Once more these two means are statistically similar.

![Lot 3 Summary](https://i.imgur.com/HhLrVkz.png)

The final lot is where we see a p value of 0.04. This is actually below the 0.05 signifigance level which means these two means are not statistically similar.

## Study Design: MechaCar vs Competition. 

### Description of Statistical Study

The cost of owning and maintaining vehicles can be quite costly for the average consumer, so AutosRUs has requested to help make certain their MechaCar can beat their competitors in long term value. To measure this the data analytics team has elected to measure the rate of depreciation for the MechaCar vs other competitor's cars.

### Metric

- Rate of depreciation (value of vehicle over time). 
  - In other words we are searching to see how much cash value of a vehicle is lost over the time of owning the vehicle.

### Hypothesis

- Null hypothesis: The rate of depreciation for MechaCar is equal to that of their competitors equivalent models. 
- Alternative hypothesis: The rate of depreciation for MechaCar is not equal to that of their competitors equivalent models.

### Statistical Test

The data analytics team will use multiple linear regression to predict the MechaCar's rate of deprecation.

### Data Required 

In order to perfrom a multiple linear regression that can predict the rate of depreciation the analysts will need vehicle values, age, and mileage for the base line variables. We can also consider things such as number of accidents as another possible variable that can influence rate of depreciation. 
