x <- c(12, NA, 7, 3, NA, 9 )

bad <- is.na(x)   # identify missing values
bad

x[bad]            # extract only the missing values (NAs)
x[!bad]           # extract only the non-missing values

a <- c(1, 2, NA, 4, NA, 5)
b <- c("A", "B", "C", NA, "E", "F")

good <- complete.cases(a, b)  # identify rows with no missing values across both vectors
good
a[good]                       # extract non-missing values from 'a'
b[good]                       # extract non-missing values from 'b'

airquality[1:6,]    # built-in dataset with some missing values
good <- complete.cases(airquality)  # identify complete rows (no missing values)

airquality[good, ][1:6, ]  # extract only complete rows
