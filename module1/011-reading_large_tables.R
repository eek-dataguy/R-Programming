# Read the first 100 rows of the CSV file to inspect the data and infer column types
initial <- read.table("/workspaces/R-Programming/data/data500.txt", header = TRUE, nrows = 100, sep = ",")

# Print the sampled rows to the console for quick inspection
initial

# Determine the class (type) of each column in the sampled data
classes <- sapply(initial, class)

# Print the inferred column classes
classes

# Read the entire file, supplying colClasses to speed up reading and ensure consistent types
# header = TRUE: first row is column names; sep = "," : comma-separated values
tableAll <- read.table("/workspaces/R-Programming/data/data500.txt", header = TRUE, colClasses = classes, sep = ",")

# Print the full table (or a summary) after loading
tableAll