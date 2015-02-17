lambda <- 0.2
ntot <- 100000
set.seed(100)
pop <- rexp(ntot, lambda)
mean(pop)
1/lambda
sd(pop)

hist(pop, breaks=100)

set.seed(100)
mns <- NULL
sample.size <- 40

for(i in 1:ntot) mns <- c(mns, mean(rexp(sample.size, lambda)))

maintxt <- c(paste("samples of size =", sample.size, "from the exp. dist."), paste("lambda = ", format(lambda, digits=2), ", theoretical mean = ", format(1/lambda, digits=2)))
xlabel <- "mean"
hist(mns, breaks=100, main=maintxt, xlab=xlabel)
abline(v=5, col="red", lwd=3)
