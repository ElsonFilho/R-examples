# Vectors
# Creating Vectors
# The c() function can be used to create vectors of objects. (Concatenate)
x <- c(0.5, 0.6) ## numeric



# Matrices
# Matrices are vectors with a dimension attribute. 
# The dimension attribute is itself an integer vector of length 2 (nrow, ncol)
m <- matrix(1:6, nrow = 2, ncol = 3)
m

# Matrices can also be created directly from vectors by adding a dimension attribute.
dim (m)
m

# Matrices can be created by column-binding or row-binding with cbind() and rbind().
x <- 1:3
y <- 10:12
cbind(x, y)

x <- 1:3
y <- 10:11
cbind(x, y)



# Factor - categorical data
x <- factor(c("yes", "yes", "no", "yes", "no"))
x
unclass(x)

# The order of the levels can be set using the levels argument to factor().
x <- factor(c("yes", "yes", "no", "yes", "no"),
            levels = c("yes", "no"))
x
unclass(x)


# Missing Values
# Missing values are denoted by NA or NaN for undefined mathematical operations.
a <- c(1, 2, NA, 10, 3)
is.na(a)     ## used to test objects if they are NA
is.nan(a)    ## used to test for NaN

b <- c(1, 2, NaN, NA, 4)
is.na(b)
is.nan(b)



# Data Frames
# Data frames are used to store tabular data
x <- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)



# Names
# R objects can also have names
x <- 1:3
names(x) <- c("foo", "bar", "norf")
x
names(x)

# Lists can also have names.
x <- list(a = 1, b = 2, c = 3)
x

# And matrices
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m

# SUBSETTING
x <- c("a", "b", "c", "c", "d", "a")
x[1]
x[3]
x[1:4]
x[x > "b"]

# Subsetting Lists
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[1]
x[[1]]
x$bar
x[["bar"]]
x$foo

x[c(1, 3)]  # taking 2 elements from the list

name <- "foo"    ## imangine this was computed...
x[[name]]        ## computed index for ‘foo’
x$name           ## element ‘name’ doesn’t exist! So we can only use with [[ or directly
x$foo            ## element ‘foo’ does exist

# Subsetting Nested Elements of a List
x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x[[c(1, 3)]]
x[[1]][[3]]
x[[c(2, 1)]]

# Partial Matching
# Partial matching of names is allowed with [[ and $.
x <- list(aardvark = 1:5)
x$a
x[["a"]]   ## won't work cause by default it is expecting an exact
x[["a", exact = FALSE]]    ## with the exact argument it does partical matching


# Removing NA Values
# A common task is to remove missing values (NAs).
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x) # create a logical vector to tell where the missings are
bad
x[!bad]            # remove the bad from x


# Using the complete.cases function 
x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x, y)
good
x[good]
y[good]

airquality[1:6, ]
good <- complete.cases(airquality)
airquality[good, ][1:6, ]



# Vectorized Operations
# Many operations in R are vectorized making code more efficient, concise, and easier to read.
x <- 1:4; y <- 6:9
x + y
x > 2
x >= 2
y == 8
x * y
x / y

# Vectorized Matrix Operations
x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x * y     ## element-wise multiplication
x / y
x %*% y   ## true matrix multiplication


#Quiz
data <- read.csv("hw1_data.csv", sep=",")
#You can get the column names of a data frame with the `names()' function.
names(data)
# You can extract the first two rows using the [ operator and an integer sequence to index the rows.
data[1:2,]
#You can use the `nrow()' function to compute the number of rows in a data frame.
nrow(data)
#The `tail()' function is an easy way to extract the last few elements of an R object.
tail(data, n=2)
#The single bracket [ operator can be used to extract individual rows of a data frame.
data[47,]

newdata <- data[ which(data$Ozone > 31 & data$Temp > 90),]
newone <- data[which(data$Month == 6), ]
mean( newone$Temp)
max(bnewone$Ozone, na.rm = TRUE)
