str(file)

conn <- file("/workspaces/R-Programming/data/data500.txt", "r")
data <- read.csv(conn)

data

close(conn)

data <- read.csv("/workspaces/R-Programming/data/data500.txt")
data

conn <- gzfile("/workspaces/R-Programming/data/words.gz", "r")
x <- readLines(conn, 10)
x

conn <- url("http://www.jhsph.edu", "r")
x <- readLines(conn)
head(x)