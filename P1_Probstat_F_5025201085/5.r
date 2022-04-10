lambda = 3

# A
set.seed(1)
rnorm(1)
probabilitas = dexp(1, rate = lambda)
# probabilitas = rexp(1, rate = lambda)
probabilitas

# B
set.seed(1)
hist(rexp(10, rate = lambda), main = "Histogram Exponetial with 10 Random Generations")
hist(rexp(100, rate = lambda), main = "Histogram Exponetial with 100 Random Generations")
hist(rexp(1000, rate = lambda), main = "Histogram Exponetial with 1000 Random Generations")
hist(rexp(10000, rate = lambda), main = "Histogram Exponetial with 10000 Random Generations")

# C
n = 100
set.seed(1)
ratarata = mean(rexp(n, rate = lambda))
varians = (sd(rexp(n, rate = lambda))) ^ 2
ratarata
varians
