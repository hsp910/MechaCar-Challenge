# Deliverable 1

# Import dependency
library(dplyr)
library(ggplot2)


# Import and read CSV file as a dataframe
MechaCar_mpg <- read.csv('Resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)


# Perform linear regression on all variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
     AWD, data = MechaCar_mpg)

## Create summary data to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = MechaCar_mpg))


# Deliverable 2

# Import and read CSV file as a dataframe
Suspension_Coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)


# Use summarize() to create a total summary dataframe on PSI column
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), 
                                               Median=median(PSI), 
                                               Variance=var(PSI), 
                                               SD=sd(PSI), 
                                               .groups = 'keep')


# Use groupby() and summarize() to create a lot_summary dataframe
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarise(
  Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), 
  .groups = 'keep')


#Deliverable 3

# Use t.test() to determine if PSI across all lots is statistically different from population mean of 1500 PSI
# Determine if data is skewed and import dataset into ggplot

plt <- ggplot(Suspension_Coil, aes(x=log10(PSI)))


# Visualize distribution of dataset using a density plot
plt + geom_density()


# T-test for all manufacturing lots
t.test(Suspension_Coil$PSI, mu = 1500)


# Use t.test() to determine if PSI across all mfg lots is statistically 
# different across each mfg lot
# Lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)


# Lot 2
t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot2")$PSI, mu = 1500)


# Lot 3
t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
