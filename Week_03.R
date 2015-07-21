#lapply always returns a list, regardless of the class of the input.
x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

# sapply will try to simplify the result of lapply if possible.
# If the result is a list where every element is length 1, then a vector is returned
# If the result is a list where every element is a vector of the same length (> 1), a matrix is returned.
# If it can’t figure things out, a list is returned
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)


x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean) #mean of the collumns

# For sums and means of matrix dimensions, we have some shortcuts.
# The shortcut functions are much faster, but you won’t notice unless 
# you’re using a large matrix.

#rowSums = apply(x, 1, sum)
#rowMeans = apply(x, 1, mean)
#colSums = apply(x, 2, sum)
#colMeans = apply(x, 2, mean)


x <- matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs = c(0.25, 0.75))


#Split
library(datasets)
head(airquality)
s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))

str(split)
str(cor)

View(cars)

?Encoding
?locales



#Debugging
printmessage <- function(x) {
  if (x > 0)
    print("x is greater than zero") else print("x is less than or equal to zero")
  invisible(x)
}
printmessage(1)
printmessage(NA)

printmessage2 <- function(x) {
  if(is.na(x))
    print("x is a missing value!")
  else if(x > 0)
    print("x is greater than zero")
  else
    print("x is less than or equal to zero")
  invisible(x)
}
printmessage2(1)
printmessage2(log(-1))


#QUIZ
library(datasets)
data(iris)

s <- split(iris, iris$Species)

apply(iris, 1, mean)
apply(iris[, 1:4], 2, mean) # this is the right one
colMeans(iris)
apply(iris, 2, mean)


library(datasets)
data(mtcars)

sapply(mtcars, cyl, mean)
sapply(split(mtcars$mpg, mtcars$cyl), mean)  # this is the right one
mean(mtcars$mpg, mtcars$cyl)
split(mtcars, mtcars$cyl)

View(mtcars)
sapply(split(mtcars$hp, mtcars$cyl), mean)


debug(ls)
ls


#Plot
data(cars)
plot(x = cars$speed, y = cars$dist, ...)
plot(x = cars$speed, y = cars$dist, xlab = "Speed", ylab = "Stopping Distance",
     main = "My Plot", sub = "My Plot Subtitle", col = 2, xlim = c(10, 15), pch = 2)

data(mtcars)
boxplot(mpg ~ cyl, data=mtcars)


#exploring a dataset

head(flags)
dim(flags)
class(flags)
cls_list <- lapply(flags, class)
cls_vect <- sapply(flags, class)
table(flags$landmass)




#Interesting other stuff

### Ctrl+L clear the console or use:
cat("\014") #apply Ctrl+L

.1 == .3 / 3
seq(0, 1, by=.1) == .3
unique(c(.3, .4 - .1, .5 - .2, .6 - .3, .7 - .4))


mean(2, -100, -4, 3, -230, 5)
mean(c(2, -100, -4, 3, -230, 5))

#something plus nothing is nothing
1 + NULL
#sum of nothing is zero
sum(numeric(0))
prod(numeric(0))

x<-3
x < -3