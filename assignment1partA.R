lambda <- 0.2
ntot <- 10000
set.seed(100)
population <- rexp(ntot, lambda)
mean(population)
1/lambda
sd(population)

maintext1 <- c(paste(ntot, "random samples from the exponential distribution"), paste("lambda = ", format(lambda, digits=2)))
hist(population, breaks=100, main=maintext1, xlab="f(x)")

mns <- NULL
sample.size <- 40

for(i in 1:ntot) mns <- c(mns, mean(rexp(sample.size, lambda)))

maintxt <- c(paste("samples of size =", sample.size, "from the exp. dist."), paste("lambda = ", format(lambda, digits=2), ", theoretical mean = ", format(1/lambda, digits=2)))
xlabel <- "sample mean"
hist(mns, breaks=100, main=maintxt, xlab=xlabel)
abline(v=1/lambda, col="red", lwd=3)



vars <- NULL
sample.size <- 4000

for(i in 1:ntot) vars <- c(vars, var(rexp(sample.size, lambda)))

maintxt <- c(paste("samples of size =", sample.size, "from the exp. dist."), paste("lambda = ", format(lambda, digits=2), ", theoretical variance = ", format((1/lambda)^2, digits=2)))
xlabel <- "sample variance"
hist(vars, breaks=100, main=maintxt, xlab=xlabel, xlim=c(0, 50))
abline(v=(1/lambda)^2, col="red", lwd=3)

vars <- NULL
sample.size <- 400

for(i in 1:ntot) vars <- c(vars, var(rexp(sample.size, lambda)))

maintxt <- c(paste("samples of size =", sample.size, "from the exp. dist."), paste("lambda = ", format(lambda, digits=2), ", theoretical variance = ", format((1/lambda)^2, digits=2)))
xlabel <- "sample variance"
hist(vars, breaks=100, main=maintxt, xlab=xlabel, xlim=c(0, 50))
abline(v=(1/lambda)^2, col="red", lwd=3)

vars <- NULL
sample.size <- 40

for(i in 1:ntot) vars <- c(vars, var(rexp(sample.size, lambda)))

maintxt <- c(paste("samples of size =", sample.size, "from the exp. dist."), paste("lambda = ", format(lambda, digits=2), ", theoretical variance = ", format((1/lambda)^2, digits=2)))
xlabel <- "sample variance"
hist(vars, breaks=100, main=maintxt, xlab=xlabel, xlim=c(0, 50))
abline(v=(1/lambda)^2, col="red", lwd=3)

sds <- NULL
sample.size <- 40

for(i in 1:ntot) sds <- c(sds, sd(rexp(sample.size, lambda)))

maintxt <- c(paste("samples of size =", sample.size, "from the exp. dist."), paste("lambda = ", format(lambda, digits=2), ", theoretical std. deviation = ", format(1/lambda, digits=2)))
xlabel <- "sample standard deviation"
hist(sds, breaks=100, main=maintxt, xlab=xlabel)
abline(v=1/lambda, col="red", lwd=3)