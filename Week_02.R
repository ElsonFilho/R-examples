#WEEK 2

#Control Structures
x<-5
if(x > 3) {
  y <- 10
} else {
  y <- 0
}
y

y <- if(x > 3) {
  10
} else {
  0
}
y

# for
x <- c("a", "b", "c", "d")
for(i in 1:4) {
  print(x[i])
}
for(i in seq_along(x)) {
  print(x[i])
}
for(letter in x) {
  print(letter)
}
for(i in 1:4) print(x[i])


#while
count <- 0
while(count < 10) {
  print(count)
  count <- count + 1
}

#repeat
x0 <- 1
tol <- 1e-8
repeat {
  x1 <- computeEstimate()
  if(abs(x1 - x0) < tol) {
    break
  } else {
    x0 <- x1
  }
}

for(i in 1:100) {
  if(i <= 20) {
    ## Skip the first 20 iterations
    next
  }
  ## Do something here
}


# FUNCTIONS

add2 <- function(x,y){
  x+y
}

above10 <- function(x){
  use <- x > 10
  x[use]
}

above <- function(x, n=10){ # default value is 10
  use <- x >n
  x[use]
}

x <- 1:20
above(x, 12)
above(x)

col_means <- function(y, removeNA= TRUE) {
  nc <-ncol(y)
  means <- numeric(nc)
  for (i in 1:nc){
    means[i] <- mean (y[,i], na.rm=removeNA)
  }
  means
} 
col_means(airquality)


formals(col_means)

# view function arguments
args(col_means)

# Dates and Times
x <- as.Date("1970-01-01")
x

x <- Sys.time()
x
## [1] "2013-01-24 22:04:14 EST"
p <- as.POSIXlt(x)
p
p$sec

Sys.Date()




#### Write to a table #####
write.csv(temp_data, file="temp_data.csv")










#QUIZ
cube <- function(x, n) {
  x^3
}

x <- 1:10
if(x > 5) {
  x <- 0
}

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}
z <- 10
f(3)


x <- 5
y <- if(x < 3) {NA} else {  10}


