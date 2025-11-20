# create a data frame with one row: numeric column a and character column b
y <- data.frame(a = 1, b = "a")

# print an R text representation of the object to the console
# dput() prints R code that, when run, recreates the object
dput(y)

# write the dput text representation to a file named "y.R"
# useful for sharing or saving a single R object in a human-readable form
dput(y, file = "y.R")

# read the R text representation back from the file and recreate the object
# dget() reads the output created by dput()
new.y <- dget("y.R")

# show the recreated object
new.y

# create a simple object x (character)
x <- "foo"

# recreate y (again) for the dump example
y <- data.frame(a = 1, b = "a")

# dump() writes R code to a file that recreates one or more objects;
# unlike dput/dget (which handle a single object), dump/source handle multiple objects
dump(c("x", "y"), file = "xy.R")

# remove x and y from the current environment to demonstrate reloading
rm(x, y)

# source() runs the R code in the file, recreating the dumped objects in the environment
source("xy.R")

# show the recreated objects
y
x