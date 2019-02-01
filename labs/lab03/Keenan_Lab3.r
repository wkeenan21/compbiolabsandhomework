##Lab step 3: Define chips and guests
chips <-5
guests <- 8
#Lab step 5: How many bags of chips each guest will eat.
chipsperguest <- 0.4
#Calculate leftover chips
print(5 - (guests * chipsperguest + 0.4))
#Guests ranking star wars movies
Self <- c(7,6,5,1,2,3,4)
Penny <- c(5,7,6,3,2,1,4)
Jenny <- c(4,3,2,7,6,5,1)
Lenny <- c(1,7,3,4,6,5,2)
Stewie <- c(6,7,5,4,3,2,1)
#Penny and Lenny's episode 4 rank
PennyIV <- Penny[4]
LennyIV <- Lenny[4]
#making a matrix of the rankings
Matrix = cbind(Self, Penny, Jenny, Lenny, Stewie)
str(Penny)
str(PennyIV)
str(Matrix)
#Penny is a list of numbers, PennyIV is a number, and Matrix is a 2D array.
Rankings2 <- data.frame(Matrix)
Rankings <- as.data.frame(Matrix)
str(Matrix)
str(Rankings)
typeof(Matrix)
typeof(Rankings)
dim(Rankings)
dim(Matrix)
#Rankings is a data frame. Matrix is a list of lists.

#Making vector for movies
Movies <- c("I", "II", "III", "IV", "V", "VI", "VII")
#Adding Row Names
row.names(Rankings)<-Movies
#Accessing Rankings for people
Matrix[3,]
Rankings[,4]
Rankings[1,5]
Rankings[2,2]
Rankings[c(4,6),c(2,3,5)]
#Changing Lenny's rankings because Lenny is wrong.
LennyII<-Rankings[2,4]
Rankings[5,4]<-LennyII 
Rankings[2,4]<-6

Rankings["III","Penny"]
#Redoing the switch

Rankings$Lenny[2]<-7
Rankings$Lenny[5]<-6
