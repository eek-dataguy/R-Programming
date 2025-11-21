x <- matrix(rnorm(200), nrow = 20, ncol = 10)

apply(x, 1, mean)  # Row means
apply(x, 2, mean)  # Column means
