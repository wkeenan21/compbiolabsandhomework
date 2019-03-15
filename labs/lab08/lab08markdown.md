# Lab 8
This is my markdown file for lab 8 in computational biology. 
## To begin
I use these lines of code to set my working directory and check that I have set it in the right place. This is essential so that the csv I output at the end goes to the right folder. 
```
setwd("C:/Users/William Keenan/Documents/EBIO4420/compBioLabsAndHomework/CompBioGitRepo/labs/lab08")
getwd()
```
## Writing the logistic growth model
A logistic growth model is used to model the abundance of a population of organisms given a carrying capacity, initial population, and rate of population growth or decay. The model is useful in predicting the amount of generations it may take for a species to reach the carrying capacity of its environment. The formula for logistc growth is:  `n[i] <- n[i-1] + ( r * n[i-1] * (K - n[i-1])/K )` where n is the population at time i, K is the carrying capacity, and r is the growth rate of the population.
## The Function
```
growth <- function(K, r, n, initpop){
  Abundance <- c(initpop, rep.int(0,n-1))
  generations <- 1:n
  for (i in 2:n){
    Abundance[i] <- Abundance[i-1] + ( r * Abundance[i-1] * (K - Abundance[i-1])/K )
  }
  plot(Abundance, generations)
  data <- cbind(generations, Abundance)
  return(data)
}
```
This function takes 4 arguments: carrying capacity (K), growth rate (r), generations (n), and initial population. The function creates a 2 vectors: generations and abundance. Generations is simply a range from 1 to the specified number of generations. Abundance is a vector of population at each generation. It returns this vectors in one matrix using `cbind`. It also creates a plot of the data.
```
testfun <- growth(10000, 0.8, 12, 2500)
write.csv(x = testfun, "lab8data.csv")
```
This code tests the function, and then writes the output to a csv.
