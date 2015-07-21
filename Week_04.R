#### WEEK 4

# str - compactly display the structure of and R object
# alternative to 'summary'

str(str)

str(lm)

x<- rnorm(100,2,4)
summary(x)
str(x)

library(datasets)
str(airquality)

s <- split(airquality, airquality$Month)
str(s)


# Simulation
# Generating Random Numbers

# rnorm: generate random Normal variates with a given mean and standard deviation
# dnorm: evaluate the Normal probability density (with a given mean/SD) at a point
# pnorm: evaluate the cumulative distribution function for a Normal distribution

# d for density
# r for random number generation
# p for cumulative distribution
# q for quantile function

x <- rnorm(10)
x

x <- rnorm(10, 20, 2)
x
summary(x)


set.seed(1) #Setting the random number seed with set.seed ensures reproducibility
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5)


# Linear Model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x,y)

# Binary (Logistic) Model
set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

# GLM - Poisson
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x, y)



# Random Sampling
set.seed(1)
sample(1:10, 4)

sample(letters, 5)

sample(1:10) ## permutation
sample(1:10, replace = TRUE) ## Sample w/replacement



# Profilling
system.time({
  n <- 1000
  r <- numeric(n)
  for (i in 1:n) {
    x <- rnorm(n)
    r[i] <- mean(x)
  }
})


# Rprof() function starts the profiler in R


# QUIZ
set.seed(1)
rpois(5, 2)


set.seed(10)
x <- rep(0:1, each = 5)
e <- rnorm(10, 0, 20)
y <- 0.5 + 2 * x + e
summary(y)
plot(x, y)

x1 <- rnorm(10, 0, 20)
x2 <- rnorm(2, 0, 10)

library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)


#### SWIRL practice

ls() # See the variables on the workspace
class(plants)   # See the structure of an object "plants"
dim(plants)     # See the dimentions of an object "plants" (rows and cols)
nrow(plants)    # See the number of rows
ncol(plants)    # See number of cols
object.size(plants) # See space occupying in memory
names(plants)   # will return a character vector of column (i.e. variable) names.
head(plants)    # to preview the top of the dataset
tail(plants)    # to preview the last rows
summary(plants) # to understand how the data are distributed
table(plants$Active_Growth_Period) # view counts on each category of a variable
str(plants)     #compactly display the structure of and R object


d1 <- Sys.Date()
d2 <- as.Date("1969-01-01")
t1 <- Sys.time()
t2 <- as.POSIXlt(Sys.time())
t2$min
weekdays(d1)
months(d1)
months(t1)
quarters(t2)
t3 <- "October 17, 1986 08:24"
t4 <- strptime(t3, "%B %d, %Y %H:%M")
Sys.time() - t1
difftime(Sys.time(), t1, units = 'days')


sample(1:6, 4, replace=TRUE)
flips<-sample(c(0,1),100, replace = TRUE, prob=c(0.3,0.7))
flips2 <- rbinom(n=100, size=1, prob = 0.7)
my_pois <- replicate(100, rpois(5, 10))
