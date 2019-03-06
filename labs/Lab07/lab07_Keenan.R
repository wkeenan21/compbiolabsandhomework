#Lab 07 William Keenan

setwd("EBIO4420/compBioLabsAndHomework/CompBioGitRepo/labs/lab07/")

#1. 
TriangleArea <- function(base, height) {
  area <- base*height*0.5
  return(area)
}
#Testing it
TriangleArea(10,9)

#2
myAbs <- function(number) {
  for (i in 1:length(number)){
    if (number[i] >= 0){
    }else{
      number[i] <- number[i]*-1}}
  return(number)
}
#testing it
myAbs(5)
myAbs(-2.3)
myAbs(c(1.1, 2, 0, -4.3, 9, -12))

#3
Fibo <- function(n,start) {
  fibonacci <- 0
  if (start < 1){
    fibonacci <- c(0,1,1, rep(0,n-3))
  #} else if (n = 1) {
  #  return(start)          Why do these 4 lines break the function?? It should solve bonus 3A.
 # } else if (n = 2) {
#    return(c(start,1))
  } else {
    fibonacci <- c(1,1, rep(0,n-2))
  } 
  for (i in seq(3,n)){
    fibonacci[i] <- fibonacci[i-1] + fibonacci[i-2]}
    return(fibonacci)
}
#Testing it
Fibo(3,0)
Fibo(30,1)

#4A
PyThag <- function(a,b) {
  c <- (a - b)**2
  return(c)
}
PyThag(3,5)
PyThag(c(2,4,6),4)

#4B
Avg <- function(vector) {
  c <- sum(vector)/length(vector)
  return(c)
  }
Avg(c(5,15,10))

#Average of the data
data = read.csv("DataForLab07.csv")
data1 <- data$x
Avg(data1)

#Part 4C
SumOfSquares <- function(x){
  Ave <- Avg(x)
  b <- PyThag(x, Ave)
  c <- sum(b)
  return(c)}

vec <- SumOfSquares(data1)


