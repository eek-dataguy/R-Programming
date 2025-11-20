# create a list with a single named element "aardvark"
x <- list(aardvark = 1:5)

# $ performs partial matching on names, so "a" matches "aardvark"
x$a 

# [[ with a string uses exact matching by default;
# there is no element literally named "a", so this returns NULL
x[["a"]]

# allow partial matching with exact = FALSE to find "aardvark"
x[["a", exact = FALSE]]

# a list with several named elements
b <- list(antelope = 6:10, zebra = 11:15, lion = 16:20)

# partial match "z" matches "zebra" (unique match) when exact = FALSE
b[["z", exact = FALSE]]

# $ also does partial matching, so this finds "zebra"
b$z

# partial match "l" matches "lion"
b[["l", exact = FALSE]]

# Note: partial matching can be convenient but also error-prone;
# prefer exact names or use exact = TRUE for predictable behaviour.