# show the internal structure of the 'file' function/object (useful for introspection)
str(file)

# open a plain text connection to the local file for reading ("r" = read mode)
conn <- file("/workspaces/R-Programming/data/data500.txt", "r")

# read CSV data from the open connection into a data.frame
data <- read.csv(conn)

# print the data.frame to the console
data

# close the connection to free resources (always close connections when done)
close(conn)

# equivalent: read CSV directly by filename (R opens/closes the connection internally)
data <- read.csv("/workspaces/R-Programming/data/data500.txt")
data

# open a connection to a gzipped file (reads compressed .gz files)
conn <- gzfile("/workspaces/R-Programming/data/words.gz", "r")

# read up to 10 lines from the gzipped file as a character vector
x <- readLines(conn, 10)
x
# note: remember to close(conn) after reading to release resources

# open a connection to a web resource (HTTP) for reading
conn <- url("http://www.jhsph.edu", "r")

# read the content of the URL as lines of text (HTML), then show the first few lines
x <- readLines(conn)
head(x)
# also close(conn) when finished