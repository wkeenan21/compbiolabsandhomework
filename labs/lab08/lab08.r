setwd("C:/Users/William Keenan/Documents/EBIO4420/compBioLabsAndHomework/CompBioGitRepo/labs/lab08")
getwd()


#population growth
K = 10000
r = 0.8
n = c(2500, rep.int(0, 11))

for (i in 2:12){
  n[i] <- n[i-1] + ( r * n[i-1] * (K - n[i-1])/K )
  print(n[i])}

n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )


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

generations <- 1:12

testfun <- growth(10000, 0.8, 12, 2500)
write.csv(x = testfun, "lab8data.csv")



