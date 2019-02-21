#William Keenan Lab 5

#setting my working directory
setwd("EBIO4420/compBioLabsAndHomework/CompBioGitRepo/labs/lab05/")

1.
x <- 10
if (x>5){
  print("x is larger than 5")
} else {
  print("x is smaller than 5")
}

2.
#read in the csv
vector = read.csv("Vector1.csv")


#turn the data frame into a vector
newvector = rep(0,2024)
for (i in 1:2024){
  newvector[i] <- vector$x[i]
}

#do the problem
for (i in 1:length(newvector)){
  if (newvector[i]<0){
    newvector[i] <- NA}
}

#2b. 
#making stuff Nan
gt1 <- is.na(newvector)
gt1[newvector]
newvector[gt1] <- NaN

#2c.
gt2 <- which(gt1)
newvector[gt2] <- 0

#2d.
#make blank vector
FiftyToOneHundred <- vector()

#solve problem
gt3 <- newvector > 50 & newvector < 100
FiftyToOneHundred <- newvector[gt3]

#2e
write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

#3.a
CO2 <- read.csv("CO2_data_cut_paste.csv")
Gas <- CO2$Gas
gt4 <- Gas > 0
which(gt4)
print("the first year gas is not zero is")
CO2$Year[135]

#3b.
TotalGas <- CO2$Gas
gt5 <- TotalGas >200 & TotalGas<300
Indexes <- which(gt5)
print ("In these years, total emissions were between 200 and 300 metric tons")
paste(CO2$Year[Indexes])

#PartII

#define all the parameters
n <- seq(1,1000)
p <- seq(1,1000)
n[1] <- 100
p[1] <- 10
totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators
#make a loop
for (t in 2:totalGenerations){
  n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
  p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
  #add the if statement
    if (n[t] < 0){ 
      n[t] <- 0
    }}
#making some plots
time <- (1:1000)
plot(time,p)
plot(time,n)

#making a matrix
MyResults <- matrix(time, nrow = 1000, ncol= 3)
colnames(MyResults) <- c('TimeStep','PreyAbundance','PredAbundance')
MyResults[1001:2000] <- n
MyResults[2001:3000] <- p
#writing it to a csv
write.csv(x = MyResults, file = "PredPreyResults.csv")

#BONUS PROBLEM

#define all the parameters
n <- seq(1,1000)
p <- seq(1,1000)
n[1] <- 100
p[1] <- 10
totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators

#establish initpreyvec
initPreyVec <- seq(from = 10, to = 100, by = 10)

#make a matrix to store the data
BonusBoi <- matrix(time, nrow = 1000, ncol= 10)
colnames(MyResults) <- c(initPreyVec)
Data <- as.data.frame(as.table(BonusBoi))
#make a loop
for (t in 2:totalGenerations){
  for (j in initPreyVec){
    n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
    p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
  #add the if statement
  if (n[t] < 0){ 
    n[t] <- 0
  }}}