#William Keenan Lab 4

#Part 1

#looping hi
hiseq <- 1:10
for (hi in hiseq){
  print('hi')}

#money problem
cash <- 0
for (money in 1:8){
  cash <- cash + 5
  cash <- cash - 1.34
  print(cash)}

#population loss
pop <- 2000
for (animals in 1:7){
  pop <- pop * 0.95
  print(pop)}

#population growth
K = 10000
r = 0.8
n = c(2500, rep.int(0, 11))

for (i in 2:12){
  n[i] <- n[i-1] + ( r * n[i-1] * (K - n[i-1])/K )
  print(n[i])}

#part II
#5a
zeros <- (rep(0,18))

#5b
for ( i in seq(1,18) ){
  zeros[i]<-3*i} 

#5c
zerosAnd1 <- c(1, rep(0 , 17))
for (i in seq(2,18)){
  zerosAnd1[i] <- 1 + zerosAnd1[i-1]*2 
  print(zerosAnd1[i])}  

#5d
fibonacci <- c(0,1,rep(0,18))
for (i in seq(3,20)){
  fibonacci[i] <- fibonacci[i-1] + fibonacci[i-2]
  }
print(fibonacci)

#5e
K = 10000
r = 0.8
n = c(2500, rep.int(0, 11))

for (i in 2:12){
  n[i] <- n[i-1] + ( r * n[i-1] * (K - n[i-1])/K )
  print(n[i])}

time <- seq(1,12)
print(time)
abundance <- n
plot(time,abundance)
