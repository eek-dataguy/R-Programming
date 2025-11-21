# sum function with two parameters
sum_two_numbers <- function(a, b) {
  a + b
}

sum_two_numbers(3, 5)  # Example usage

# function take vector and return value that greater than 10
greater_than_ten <- function(vec) {
  vec[vec > 10]
}

greater_than_ten(c(5, 12, 8, 20, 3))  # Example usage

# function take vector and return value that greater than x
greater_than_x <- function(vec, x = 10) {
  vec[vec > x]
}

greater_than_x(c(5, 12, 8, 20, 3), 5)  # Example usage
greater_than_x(c(5, 12, 8, 20, 3))        # Using default x = 10

# function to compute column means of a matrix
column_means <- function(mat) {
  means <- numeric(ncol(mat))  # Initialize a numeric vector to store means
  for (j in seq_len(ncol(mat))) {
    means[j] <- mean(mat[, j])
  }
  means
}

# Example usage
mat <- matrix(1:12, nrow = 4, ncol = 3)
mat
column_means(mat)   # Should return the means of each column

mydata <- rnorm(100)  # Generate 100 random normal values
mydata

sd(mydata)  # Calculate standard deviation using built-in function

sd(x = mydata)

sd(x = mydata, na.rm = FALSE)


args(lm)

args(greater_than_x)