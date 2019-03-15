

#William Keenan lab 09
#Read in the data
setwd("C:/Users/William Keenan/Documents/EBIO4420/compBioLabsAndHomework/CompBioGitRepo/labs/lab09")
camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

#figuring it out
as.Date(camData$DateTime)
originaldates <- camData$DateTime
as.Date(smallVec, '%d/%m/%Y %H:%M')
strptime(smallVec, format = '%d/%m/%Y %H:%M')

#doing problem 1

camData$DateTime <- strptime(camData$DateTime, format = '%d/%m/%Y %H:%M')

#problem 2
vec <- nchar(originaldates[1])

baddates <- list()
for (i in 1:length(camData$DateTime)){
  if (nchar(originaldates[i]) < 15){
    baddates <- append(baddates, i)
  }}
list <- strptime(camData$DateTime[1], format = '%d/%m/%Y %H:%M')
for (i in 9797:length(camData$DateTime)){
  if (i %in% baddates){
    list <- append(list, strptime(camData$DateTime[i], format = '%d/%m/%y %H:%M'))
  }else{
    list <- append(list, strptime(camData$DateTime[i], format = '%d/%m/%Y %H:%M'))
}}

camData$DateTime <- list

