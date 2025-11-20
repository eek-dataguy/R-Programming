x <- matrix(1:6, nrow = 2, ncol = 3)  # 2x3 matrix
x           # print the whole matrix

x[1, 2]      # element at row 1, column 2

x[2, 1]      # element at row 2, column 1

x[1, ]       # all elements in row 1

x[, 2]       # all elements in column 2

x[1, 2, drop = FALSE]  # element at row 1, column 2 as a 1x1 matrix

x[1, , drop = FALSE]   # row 1 as a 1x3 matrix

