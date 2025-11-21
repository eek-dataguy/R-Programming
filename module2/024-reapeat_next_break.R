# x0 <- 1
# tol <- 1e-8

# repeat {
#   x1 <- computeEstimate()
#   if (abs(x1 - x0) < tol) {
#     break
#   } else {
#     x0 <- x1
#   }
# }

for (i in 1:10) {
  if (i %% 2 == 0) {
    next  # Skip even numbers
  }
  print(i)
}