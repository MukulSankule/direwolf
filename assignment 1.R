
##Question 1
##Generate two random matrices of dimensions 100X100 and perform vectorised multiplication
##and matrix multiplication on it.

set.seed(1)
m1 <- matrix(rnorm(10000),100,100)
m2 <- matrix(rnorm(10000),100,100)
vecmul <- m1*m2
matmul <- m1%*%m2




##Question 2
##Generate a list containing a random sequence of integers named “random” and length 500, a
##sorted increasing character array of length 26 named “chars” and a factor variable with two
##levels “yes” and “no” with 50 “yes” and 50 “no” placed randomly and name the factor variable
##accordingly. Perform basic subsetting operations on the list:
##Subset first 20 elements of the character array


z <- list(random = sample(500,500), chars = letters, 
          f <- sample(gl(2,50, labels = c("Yes", "No"))));

s1 <- z[[2]][1:20]



##Question 3
##There are two vectors x and y with the following values: x <- c(1,2,3,NA,5,6,7,8,NA,NA), y<-
##c(“a”,”b”,”c”,NA,”e”,”f”,”g”,”h”,NA,NA). How would you subset both the vectors taking only the
##good values.

x <- c(1,2,3,NA,5,6,7,8,NA,NA)
y <- c("a","b","c",NA,"e","f","g","h",NA,NA)

good <- complete.cases(x,y)

goodx <- x[good]
goody <- y[good]




##Question 4
##You are given two lists x <- list(a = 1:100,b = rnorm(100), c = rbinom(100,0,2)) and y <- list(a =
##matrix(1:20,4,5), b = matrix(1:50,10,5)). Calculate the mean of each element in x and extract
##the first two columns of each matrix in y.

x <- list(a = 1:100, b = rnorm(100), c = rbinom(100,0,2))
y <- list(a = matrix(1:20,4,5), b = matrix(1:50,10,5))

s1 <- sapply(x,mean,na.rm = T)
s2 <- lapply(y,function(x) {list((x[,c(2,3)]))})




##Question 5
##Simulate a linear model y = a + bx + e where e ~ N(0,9), x ~ N(0,1), a = 0.7 and b = 5. Plot the
##x versus y graph and the regression line.

set.seed(2)
e <- rnorm(100,0,3)
x <- rnorm(100,0,1)

a <- 0.7
b <- 5

y <- a*x + b + e

plot(x,y)

d <- data.frame(y,x)
reg <- lm( y ~ x, data = d)
abline(reg)


d <- data.frame(y,x,e)
reg <- lm( y ~ x + e, data = d)




##Question 6
##Simulate a poisson model y ~ Poisson(mu) where log(mu) = a + bx, x ~ N(0,1), a = 0.7 and b =
##0.3.

set.seed(3)
x <- rnorm(100,0,1)

a <- 0.7
b <- 0.3

log.mu <- a + b*x
y <-  rpois(100, exp(log.mu))

plot(x,y)



