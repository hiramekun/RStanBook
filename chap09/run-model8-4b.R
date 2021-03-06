library(rstan)

d <- read.csv('../chap08/input/data-salary-2.txt')
N <- nrow(d)
K <- 4
data <- list(N = N, X = d$X, Y = d$Y, KID = d$KID)
fit <- stan(file = 'model/model8-4b.stan', data = data, seed = 1234)
