# 1. Normal Distribution
# Use Case:
# The average height of man in USA is 177cm with a standard deviation of 3cm.
# Assuming that a man's height is normally distributed.
# What is the probility that the man's is height between 160cm and 185cm.

Xaxis_Height<- seq (160, 185, by=1)
#length(Xaxis_Height) 
Yaxis_Probablity <- dnorm(x,177,3,FALSE)
#length (Yaxis_Probablity )
plot( Xaxis_Height ,Yaxis_Probablity, xlab= "Height", ylab = "Probablity", type ="l")

curve(dnorm(x, 177, 5), from = 160, to = 185)


#-------------------------------------------------------------------------------------------------



# 2. Lognormal Distribution
# Use Case:
# The average lifespan of a car is 15 years with a standard deviation of 2 years
# The cost of maintenance of the car is lognormal distribution.
# What is the probility that the car is 8 years to 14 years 
curve(dlnorm(x,30, 2), from = 8, to = 14)



#-------------------------------------------------------------------------------------------------


# 3. Exponential Distribution
# Use Case:
# Suppose the time between arrivals of taxis at rush hours is exponentially distributed with a mean of 10 minutes.
# What is the probility that a person wait longer than an hour for a taxi.
curve(dexp(x, rate = 10, log = FALSE))





#-------------------------------------------------------------------------------------------------


# 4. Poisson Distribution
# Use Case: 
# Suppose that the number of customer who enter a supermarket in an hour follows Poisson Distribution with a mean of 50.
# What is the probability of 30 people enter a supermarket in one hour.

curve(dpois(x, lambda = 50,log = FALSE))



#-------------------------------------------------------------------------------------------------


# 5. Binomial Distribution
# Use Case:
# Suppose a warn machine produces 0.01 defective parts. Thus, the probability of successful parts is 0.99.
# What is the probability of successful parts in the next 100 parts produced.
curve(dbinom(x, size = 100, prob = 0.99), from = 1, to = 100 )


#-------------------------------------------------------------------------------------------------



# 6. Weibull Distribution
# Use Case:
# Assume that the life of tyre follows a Weibull Distribution with shape parameters equals 2
# What is probability that a tyre lasts 5 years
curve(dweibull(x, shape=2, scale = 1, log = FALSE), from = 1, to = 5)




