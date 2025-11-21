# Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified
# list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'.Given a vector 
# monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in 
# the 'directory' argument and returns the mean of the pollutant across all of the monitors,
# ignoring any missing values coded as NA.
pollutantmean <- function(directory, pollutant, id = 1:332) {
  all_data <- data.frame()  # Initialize an empty data frame to store data

  for (monitor_id in id) {
    # Create the file name with leading zeros
    file_name <- sprintf("%03d.csv", monitor_id)
    file_path <- file.path(directory, file_name)
    
    # Read the data from the CSV file
    monitor_data <- read.csv(file_path)
    
    # Append the data to the all_data data frame
    all_data <- rbind(all_data, monitor_data)
  }
  
  # Calculate the mean of the specified pollutant, ignoring NA values
  mean_value <- mean(all_data[[pollutant]], na.rm = TRUE)
  
  return(mean_value)
}

# Write a function that reads a directory full of files and reports the number of completely observed cases in each data 
# file. The function should return a data frame where the first column is the name of the file and the second column is
# the number of complete cases
complete <- function(directory, id = 1:332) {
  results <- data.frame(id = integer(), nobs = integer())  # Initialize an empty data frame
  
  for (monitor_id in id) {
    # Create the file name with leading zeros
    file_name <- sprintf("%03d.csv", monitor_id)
    file_path <- file.path(directory, file_name)
    
    # Read the data from the CSV file
    monitor_data <- read.csv(file_path)
    
    # Count the number of complete cases (rows without NA values)
    n_complete_cases <- sum(complete.cases(monitor_data))
    
    # Append the result to the results data frame
    results <- rbind(results, data.frame(id = monitor_id, nobs = n_complete_cases))
  }
  
  return(results)
}

# Write a function that takes a directory of data files and a threshold for complete cases and calculates the correlation 
# between sulfate and nitrate for monitor locations where the number of completely observed cases (on all variables) 
# is greater than the threshold. The function should return a vector of correlations for the monitors that meet the 
# threshold requirement. If no monitors meet the threshold requirement, then the function should return a numeric 
# vector of length 0. A prototype of this function follows
corr <- function(directory, threshold = 0) {
  correlations <- numeric()  # Initialize an empty numeric vector to store correlations
  
  for (monitor_id in 1:332) {
    # Create the file name with leading zeros
    file_name <- sprintf("%03d.csv", monitor_id)
    file_path <- file.path(directory, file_name)
    
    # Read the data from the CSV file
    monitor_data <- read.csv(file_path)
    
    # Count the number of complete cases (rows without NA values)
    n_complete_cases <- sum(complete.cases(monitor_data))
    
    # Check if the number of complete cases exceeds the threshold
    if (n_complete_cases > threshold) {
      # Subset the data to include only complete cases
      complete_data <- monitor_data[complete.cases(monitor_data), ]
      
      # Calculate the correlation between sulfate and nitrate
      corr_value <- cor(complete_data$sulfate, complete_data$nitrate)
      
      # Append the correlation value to the correlations vector
      correlations <- c(correlations, corr_value)
    }
  }
  
  return(correlations)
}


pollutantmean("/workspaces/R-Programming/data/specdata", "sulfate", 1:10)
pollutantmean("/workspaces/R-Programming/data/specdata", "nitrate", 70:72)
pollutantmean("/workspaces/R-Programming/data/specdata", "sulfate", 34)
pollutantmean("/workspaces/R-Programming/data/specdata", "nitrate")

cc <- complete("/workspaces/R-Programming/data/specdata", c(6,10,20,34,100,200,310))
cc

cc <- complete("/workspaces/R-Programming/data/specdata", 54)
cc

# RNGversion("3.5.1")  # Ensure consistent random number generation
set.seed(42)
cc <- complete("/workspaces/R-Programming/data/specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

cr <- corr("/workspaces/R-Programming/data/specdata")                
cr <- sort(cr)   
# RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr("/workspaces/R-Programming/data/specdata", 129)                
cr <- sort(cr)                
n <- length(cr)    
# RNGversion("3.5.1")
set.seed(197)                
out <- c(n, round(cr[sample(n, 5)], 4))
print(out)

cr <- corr("/workspaces/R-Programming/data/specdata", 2000)                
n <- length(cr)                
cr <- corr("/workspaces/R-Programming/data/specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))