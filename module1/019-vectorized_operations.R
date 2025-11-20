x <- 1:4; y <- 6:9

x + y    # element-wise addition

x * y    # element-wise multiplication

x / y    # element-wise division

x > 2    # element-wise comparison (greater than 2)

x >= 2  # element-wise comparison (greater than or equal to 2)

x == 8  # element-wise comparison (equal to 8)

x <- matrix(1:6, nrow = 2, ncol = 3)  # 2x3 matrix
y <- matrix(6:1, nrow = 2, ncol = 3)  # another 2x3 matrix

x + y    # element-wise addition of matrices
x * y    # element-wise multiplication of matrices
x / y    # element-wise division of matrices
x > 2    # element-wise comparison (greater than 2)
x == 4   # element-wise comparison (equal to 4)
x %*% t(y)  # matrix multiplication (x times the transpose of y)
# Note: t(y) computes the transpose of matrix y
x <- c(1, 2, 3, 4, 5)
sum(x)        # sum of all elements in x
mean(x)       # mean (average) of elements in x
sd(x)         # standard deviation of elements in x
var(x)        # variance of elements in x
min(x)        # minimum value in x
max(x)        # maximum value in x
range(x)      # range of values in x (min and max)
sort(x)       # sorted version of x
order(x)      # indices that would sort x
unique(x)     # unique elements in x
length(x)     # number of elements in x
which(x > 2)  # indices of elements in x that are greater than 2
cumsum(x)     # cumulative sum of elements in x
cumprod(x)    # cumulative product of elements in x
rev(x)        # reverse the order of elements in x
any(x > 4)   # check if any elements in x are greater than 4
all(x > 0)   # check if all elements in x are greater than 0

