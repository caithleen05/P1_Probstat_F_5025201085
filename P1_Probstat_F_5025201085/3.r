lambda = 4.5

# A
x = 6
probabilitas = dpois(x, lambda)
probabilitas

# B
x = 6
n = 365
hist(rpois(n, lambda), main = "Histogram Poisson")

# C (kesimpulan)

# D
ratarata = varians = lambda
ratarata
varians