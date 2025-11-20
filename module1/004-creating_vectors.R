x <- c(0.5, 0.6)

x
typeof(x) ## numeric double

x <- c(TRUE, FALSE)
x
typeof(x) ## logical

x <- c(T, F)
x
typeof(x) ## logical

x <- c("a", "b", "d")
x
typeof(x) ## character

x <- 9:29
x
typeof(x) ## integer

x <- c(1 + 0i, 2 + 4i)
x
typeof(x) ## complex

## using vector function
x <- vector("numeric", length = 10)
x
typeof(x)


## Mixing Object
y <- c(1.7, "a")
y
typeof(y) ## Character

y <- c(TRUE, 2)
y
typeof(y) ## numeric double

## Explicit Coercion
x <- 0:6
x

class(x)
print(class(x))

as.numeric(x)

as.logical(x)

as.character(x)
print(as.character(x))

# - nonsenical coercion result NA
x <- c("a", "b", "c")
x
as.numeric(x)

as.logical(x)

as.complex(x)

## Lists
x <- list(1, "a", TRUE, 1 + 4i)
x

x[1]
