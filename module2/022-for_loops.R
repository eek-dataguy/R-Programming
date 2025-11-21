for (i in 1:10) {
  print(i^2)
}

for (char in c("a", "b", "c")) {
  print(paste("Character:", char))
}

x <- c(2, 4, 6, 8, 10)

for (i in 1:5) {
  print(x[i])
}

seq_along(x)  # seq_along(x) generates a sequence from 1 to length(x)

for (i in seq_along(x)) {
  print(x[i])
}

for (letter in x) {
  print(letter)
}

for (i in 1:5) print(x[1])  # Single-line for loop without braces

x <- matrix(1:6, nrow = 2, ncol = 3)

for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}