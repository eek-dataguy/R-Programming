x <- list(a = 1:5, b = rnorm(10), c = runif(7))
x

lapply(x, mean)

lapply(x, sum)

x <- 1:5
lapply(x, runif)

lapply(x, runif, min = 0, max = 10)

x <- list(a = matrix(1:4, 2, 2),
          b = matrix(1:6, 3, 2))
x

lapply(x, function(m) m[,1])

x <- list(a = 1:5, b = rnorm(10), c = runif(7))
sapply(x, mean)
