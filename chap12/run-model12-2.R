library(rstan)

d <- read.csv('input/data-ss1.txt')
T <- nrow(d)
T_pred <- 3
data <- list(T = T, T_pred = T_pred, Y = d$Y)
stanmodel <- stan_model(file = 'model/model12-2.stan')
fit <- sampling(stanmodel, data = data, pars = c('mu_all', 's_mu', 's_Y'),
                iter = 4000, thin = 5, seed = 123)

save.image('output/result-model12-2.RData')
