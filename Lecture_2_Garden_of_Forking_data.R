############################################
##  Lecture 2: The Garden of Forking Data
##
##  The proportion of the earths surface covered by water

# Random toss of a globe to see where it lands - Land or Water?

rm(list = ls())

#___________
## 1. Define the model and parameters

# N - number of trials - fixed by us (the engineer) - observed 
# W - number of waters observed - relative number of ways to see W, given N and p - probability distribution - binomial  Pr(W|N,p) - observed
# p - true probability of water on earth - unobserved (only infer this with the posterior distribution)

#___________
## 2. The joint model

# W ~ Binomial(N,p) - W follows the binomial distribution based on N and p
# p ~ Uniform(0,1) - prior knowledge of p, here uniform or uninformative between 0-1

#___________
### 3. Compute the posterior using grid approximation (easy in this simple example)

# Posterior is Pr(p|W,N) probability of your unobserved variable given the data
# finite parameter values of p across parameter space (split up 0-1 into chunks)

# Posterior is approximately = prior x likelihood -> then standardised
# likelihood is the probability of your data given your unobserved Pr(W|N,p)

p_grid <- seq(0,1,length.out = 1000) # finite grid (1000) across our unobserved parameter p
prob_p <- rep(1,1000) # uniform prior over those 1000 grid values
prob_data <- dbinom(6, size = 9, prob = p_grid) # this is our likelihood of observing 6 Waters from 9 trials given our grid of unobserved p

posterior <- prob_data*prob_p # our approximate posterior
posterior <- posterior/sum(posterior)

# have a look at this - here because we have an uniform prior have our peak around 0.66 or 6 out of 9 trials
plot(posterior ~ p_grid,type = "l")

#___________
### 4. Sample from the posterior

samples <- sample(p_grid, prob = posterior, size = 1e4, replace = T)

par(mfrow = c(1,2))
plot(samples, col = "blue")
plot(density(samples), col = "blue")
dev.off()

#___________
### 5. Posterior predictive checks

# use our samples from the posterior distribution to simulate a frequency distribution of observations
nw <- rbinom(n = 1e4, size = 9, prob = samples)

hist(nw)

#___________
### 6. Homework











