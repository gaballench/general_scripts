# functions
pr <- function(theta) {
    output <- 3/4*(1-exp(-4/3*theta))
    return(output)
}

f_likelihood<- function(x, n, theta) {
    p <- pr(theta)
    output <- (p^x)*(1-p)^(n-x)
    return(output)
}

f_prior <- function(mu, theta) {
    output <- (1/mu)*exp(-(1/mu)*theta)
    return(output)
}

mcmc <- function(maxIter, burnIn, initVal, n, x, w, mu) {
    thetae <- vector()
    for(i in seq_along(initVal)) {
        iter <- 0
        theta <- initVal[i]
        while(iter < maxIter) {
            iter <- iter + 1
            r <- runif(1, 0, 1)
            thetaNew <- abs(theta - w/2 + w*r)
            priorR <- f_prior(mu, thetaNew)/f_prior(mu, theta)
            likelihoodR <- f_likelihood(x, n, thetaNew)/f_likelihood(x, n, theta)
            alpha <- min(1, priorR*likelihoodR)
            r <- runif(1, 0, 1)
            if(r < alpha) {
                theta <- thetaNew
            } else {
                theta <- theta
            }
            if(iter > burnIn) {
                thetae <- c(thetae, theta)
            }
        }
    }
    return(thetae)
}




# initial parameter theta and constant mu
#initVal <- c(0, 0.25, 0.5, 0.75, 1)


# application
thetae <- mcmc(maxIter = 50000, burnIn = 10000, initVal = c(0, 0.5, 1), n = 100, x = 10, w = 0.001, mu = 0.1)

# w determines how long does the thetaNew var deviates from theta and therefore can provide smoother chains but require 
# way more iterations to converge.
# mu is the real mu in the distribution, so the chains will converge to its value. Concerning this excercise that is 
# desirable since allows to test convergence both visually and analitically.
