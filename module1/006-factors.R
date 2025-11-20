x <- factor(c("yes", "no", "yes", "no"))

x
table(x)

unclass(x)

x <- factor(c("yes", "no", "yes", "no"), levels = c("yes", "no"))
x