n = 100
mean = 50
sd = 8

# A
set.seed(1)
data <- rnorm(n, mean, sd)
data
summary(data)

x1 = runif(1, min = min(data), max = mean)
x2 = runif(1, min = mean, max = max(data))
x1
x2

probabilitas1 <- pnorm(x1, mean, sd)
probabilitas2 <- pnorm(x2, mean, sd)
probabilitas1
probabilitas2

probabilitas <- probabilitas2 - probabilitas1
plot(data)

# B
breaks = 50
hist(data, breaks, main = "5025201079_Julio Geraldi Soeiono_Probstat E_DNhistogram")

# C
varians = (sd(data)) ^ 2
varians