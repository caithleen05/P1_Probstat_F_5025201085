# A
p = 0.2
x = 3
P <- dgeom(x, p)
P

# B
mean(rgeom(n = 10000, prob = p) == 3)
mean

# C (kesimpulan)

# D
n = 10000
hist(rgeom(n, prob = p), main = 'Histogram Distribusi Geometrik')

# E
mean = 1 / p
variance = (1 - p) / (p ^ 2)
mean
variance
