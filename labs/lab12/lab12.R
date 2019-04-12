setwd("C:/Users/William Keenan/Documents/EBIO4420/compBioLabsAndHomework/CompBioGitRepo/labs/lab12")
animals <- read.csv('cusack.csv', stringsAsFactors = F)
install.packages("tidyverse")
library("ggplot2")

#Problem 1
ggplot(animals, aes(x=Species)) + geom_bar()

#changing bar ticks
ggplot(animals, aes(x=Species)) + geom_bar() + theme(axis.text.x= element_text(angle = 90))

#changing more
unique = unique(animals$Species)
newData = data.frame(species = unique(animals$Species), howmany = 0)


for (i in 1:41){
  gt6 <- animals$Species == newData$species[i]
  counts = sum(gt6)
  newData$howmany[i] <- counts
}

newData 
#this doesnt work
ggplot(animals, aes(x=Species)) + geom_bar() + coord_flip() + scale_y_continuous(trans='log2')
#but this does (:
ggplot(newData, aes(x=reorder(species, -howmany), y=howmany,)) + geom_bar(stat='identity')  + scale_y_continuous(trans='log2') + coord_flip()

#i did it

