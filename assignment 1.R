
##Question 1

set.seed(1)
m1 <- matrix(rnorm(10000),100,100)
m2 <- matrix(rnorm(10000),100,100)
vecmul <- m1*m2
matmul <- m1%*%m2




##Question 2

z <- list(random = sample(500,500), chars = letters, 
          f <- as.factor(sample(c("Yes","No"),100,100)) );

s1 <- z[[2]][1:20]



##Question 3

x <- c(1,2,3,NA,5,6,7,8,NA,NA)
y <- c("a","b","c",NA,"e","f","g","h",NA,NA)

good <- complete.cases(x,y)

goodx <- x[good]
goody <- y[good]




##Question 4

x <- list(a = 1:100, b = rnorm(100), c = rbinom(100,0,2))
y <- list(a = matrix(1:20,4,5), b = matrix(1:50,10,5))

s1 <- sapply(x,mean,na.rm = T)
s2 <- lapply(y,function(x) {list((x[,c(2,3)]))})




##Question 5

set.seed(2)
e <- rnorm(100,0,3)
x <- rnorm(100,0,1)

a <- 0.7
b <- 5

y <- a*x + b + e

plot(x,y)

d <- data.frame(y,x,e)
reg <- lm( y ~ x + e, data = d)




##Question 6

set.seed(3)
x <- rnorm(100,0,1)

a <- 0.7
b <- 0.3

log.mu <- a + b*x
y <-  rpois(100, exp(log.mu))

plot(x,y)



