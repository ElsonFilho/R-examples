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
#above(x)

col_means <- function(y, removeNA= TRUE) {
  nc <-ncol(y)
  means <- numeric(nc)
  for (i in 1:nc){
    means[i] <- mean (y[,i], na.rm=removeNA)
  }
  means
} 
#col_means(airquality)