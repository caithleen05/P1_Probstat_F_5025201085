n = 20
p = 0.2

# A
x = 4
probabilitas = dbinom(x, n, prob = p, log = FALSE)
probabilitas

# B
hist(rbinom(x, n, prob = p), xlab = "X", ylab = "Frekuensi", main = "Histogram Binomial")

# C
ratarata = n * (prob = p)
varians = n * (prob = p) * (1 - (prob = p))
ratarata
varians 