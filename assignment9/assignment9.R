
setwd("D:/")
trout <- read.csv('trout.csv')

library("ggplot2")
install.packages("foreign")
install.packages("MASS")
install.packages("Hmisc")
install.packages("reshape2")

library("foreign")
library("MASS")
library("Hmisc")
library("reshape2")
library("nnet")



#rename the columns I will be using
names(trout) <- c("fish", "geno", "weight", "LogWT", "elev")
summary(trout)

#explore the statistics of the different species of trout. To do this, I must create variables
#that represent the weights of each trout

#These loops and which statements extract each species weight into a new variable 
WCT <- vector()
for (i in 1:354){
  if (trout$geno[i] == "WCT"){
      WCT <- append(WCT, trout$weight[i])}}

RT <- vector()
for (i in 1:354){
  if (trout$geno[i] == "RT"){
    RT <- append(RT, trout$weight[i])}}

HYB <- vector()
for (i in 1:354){
  if (trout$geno[i] == "HYB"){
    HYB <- append(HYB, trout$weight[i])}}

summary(WCT)
summary(HYB)
summary(RT)

#explore statistics
ggplot(trout, aes(x=weight, y=elev, color = geno)) + geom_point()
ggplot(trout, aes(geno, weight)) + geom_boxplot()

#For my analysis, the roder of the factors matters because I am running an ordinal logistic regression
#Currently, the order of the factors for genotype is: HYB, RT, WCT. For my analysis, I need to switch this
#to RT, HYB, WCT

#before its fixed
trout$geno

trout$geno <- factor(trout$geno, levels = c("RT", "HYB", "WCT"))

#after its fixed
trout$geno






#I will run three models. The first will be trying to predict genotype using just weight.
weightModel <- polr(geno ~ weight, data = trout, Hess=TRUE)
summary(weightModel)

#just elevation
elevModel <- polr(geno ~ elev, data = trout, Hess=TRUE)
summary(elevModel)

#both
bothModel <- polr(geno ~ elev, data = trout, Hess=TRUE)
summary(bothModel)

#From the summaries, I can see that the elevation model is fairly strong. However, the weight model is not.
#The both model has the same values as the elev model. It is not considering weight. Therefore, we will not use weight.

#How accurate is the model?
#I will test the model on all the data and check the accuracy

elev <- trout$elev
elevModelresults <- predict(elevModel, newdata = trout$elev)
test <- elevModelresults == trout$geno
trues <- length(test[test == TRUE])
print(trues/length(test))
#77% is pretty good, but lets see if we can make it more accurate by using a non-ordinal model.

mul <- multinom(geno ~ elev + weight, data = trout)
summary(mul)

WandE = data.frame(weight = trout$elev, elev = trout$elev)

multiModelresults <- predict(mul, newdata = WandE)
test <- multiModelresults == trout$geno
trues <- length(test[test == TRUE])
print(trues/length(test))

#Its the same exact accuracy, even when including weight. I am curious if weight would be a good predictor in a 
#non-ordinal model.


#Lets see if weight is good at predicting genotype
weight <- multinom(geno ~ weight, data = trout)
summary(weight)

WandE = data.frame(weight = trout$elev, elev = trout$elev)

weightModelresults <- predict(weight, newdata = WandE)
test2 <- weightModelresults == trout$geno
trues <- length(test2[test2 == TRUE])
print(trues/length(test2))

#0.19 accuracy is worse than random. So no, weight is useless.


#Plotting how accurate the elevation multinomial model is
cbind(trout, test)
ggplot(trout, aes(x=elev, y=weight, color = test, shape = geno)) + geom_point()



