#William Keenan
#Lab 09

install.packages("tidyverse")
setwd("C:/Users/William Keenan/Documents/EBIO4420/compBioLabsAndHomework/CompBioGitRepo/labs/lab11")
Wood <- read.csv('GlobalWoodDensityDatabase.csv', stringsAsFactors = F)

#Changing the column name
colnames(Wood)[4] <- 'woodDensity'

#Finding the nas
which(is.na(Wood$woodDensity))
print('Row 12150 is NA')

#Getting rid of that row
Wood <- Wood[-12150, ]

#Doing the hard part
species <- unique(Wood$Binomial)
means <- list()
for (i in 1:length(species)){
  x <- 0
  for (j in 1:length(Wood$Binomial)){
    if (Wood$Binomial[j] == species[i]){
      x <- x + Wood$woodDensity[j]}}
      y <- mean(x)
      means <- append(means, y)
}



