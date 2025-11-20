# create a character vector (note "a" appears twice)
x <- c("a", "b", "c", "d", "e", "a")

# extract the first element (by index)
x[1]

# extract the second element
x[2]

# extract elements 1 through 4 using a numeric index sequence
x[1:4]

# element-wise comparison: produces a logical vector indicating which elements are
# lexicographically greater than "a" (e.g. "b", "c", "d", "e" -> TRUE; "a" -> FALSE)
x > "a"  

# store the logical result of the comparison
u <- x > "a"
u

# use the logical vector to subset x: keeps only the elements where u is TRUE
x[u]