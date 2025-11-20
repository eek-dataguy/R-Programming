data <- read.csv("/workspaces/R-Programming/data/hw1_data.csv", header = TRUE)
head(data)
tail(data)

# The value of Ozone in the 47th row
data[47, "Ozone"]

# missing values in the Ozone column
ozone_na <- is.na(data$Ozone)
sum(ozone_na)

# mean of the Ozone column, excluding missing values
mean_ozone <- mean(data$Ozone, na.rm = TRUE)
mean_ozone

# mean of the Solar.R column, when Ozone values are above 31 and Temp values are above 90
subset_data <- data[data$Ozone > 31 & data$Temp > 90, ]
mean_solarR <- mean(subset_data$Solar.R, na.rm = TRUE)
mean_solarR

# mean of the Temp column for the month of June (Month == 6)
june_data <- data[data$Month == 6, ]
mean_temp_june <- mean(june_data$Temp, na.rm = TRUE)
mean_temp_june

# maximum Ozone value for the month of May (Month == 5)
may_data <- data[data$Month == 5, ]
max_ozone_may <- max(may_data$Ozone, na.rm = TRUE)
max_ozone_may