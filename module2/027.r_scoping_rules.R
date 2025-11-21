make_power <- function(n) {
  pow <- function(x) {
    x ^ n
  }
  pow
}

square <- make_power(2)
cube <- make_power(3)

square(3)  # 9
cube(3)    # 27

ls(environment(square))
get("n", environment(square))

ls(environment(cube))
get("n", environment(cube))

y <- 10

f <- function(x) {
  y <- 2
  y^2 + g(x)
}

g <- function(x) {
  x * y
}

f(3)
