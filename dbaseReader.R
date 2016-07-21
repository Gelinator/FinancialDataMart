require(foreign)
setwd("/Volumes/KINGSTON/AVA01/Untitled Folder/")

allFiles = list.files()
dbfs = grep("*.dbf",allFiles,ignore.case = TRUE)
allFiles = allFiles[dbfs]

for (i in allFiles){
  name = sub(".dbf",ignore.case = T,replacement = "",x = i)
  fileName = paste0(name,".csv")
  write.csv(x = read.dbf(i),file = fileName)
}