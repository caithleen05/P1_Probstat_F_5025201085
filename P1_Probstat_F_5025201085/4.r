x = 2
v = 10

# A
probabilitas = dchisq(x, 10)
probabilitas

# B
n = 100
hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Grafik Histogram")

# C
ratarata = v
varians = 2 * v
ratarata
varians