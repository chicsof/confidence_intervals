
#############################################################################
############# CONFIDENCE INTERVAL WITH T VALUE ##############################
#############################################################################

#the test scores of 9 randomly selected students are 83, 73, 71, 77, 77, 59, 92
#Compute the 99% confidence interval of the true mean.

studentScores <- c(83, 73, 71, 77, 77, 59, 92)
scoreMean <- mean(studentScores)
n <- length(studentScores)

#since we do not know the standart deviation of the actuall population, rather we only know the s of the sample and our sample n<30 we will use t
# values to calculate the error
error <- qt(0.99,df=n-1) * sd(studentScores)/sqrt(n)

#so then our value is the sample mean +/- he error
left <- scoreMean - error
right <- scoreMean + error
left
right

#############################################################################
############# CONFIDENCE INTERVAL WITH S VALUE ##############################
#############################################################################

#Estimate the avarage weight for the adult male population.The avarage weight of 100 randomly selected adult males is 180lbs. Assume a population
#standart deviation of 20lbs. Compute a 95% confidence interval for the population avarage weight.

n <- 100
meanWeight <- 180
sPopulation <- 20

#we can calculate the interval from a normal distribution 
error <- qnorm(0.95)* sPopulation/sqrt(n)
left <- meanWeight - error
right <- meanWeight + error
left
right
