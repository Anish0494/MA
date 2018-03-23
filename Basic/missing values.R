#missing values
v1 = c(1,2,NA,NA,5)
is.na(v1)
mean(v1)
mean(v1,na.rm = T)
na.omit(v1)
anyNA(v1)
#replacing the NA with mean
v1[is.na(v1)]=mean(v1,na.rm = T)
v1


library(VIM)
data("sleep",package = 'VIM')
head(sleep)
dim(sleep)
complete.cases(sleep)
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
#no of missing values in column dream
sum(is.na(sleep$Dream))
#calculating the percentage of the missing value in dream(mean*100)
mean(is.na(sleep$Dream))


#calculating the percentage of the missing value in sleep(mean*100)
mean(!complete.cases(sleep))
#total missing values in the data frame sleep
sum(is.na(sleep))

#total missing values in the data frame sleep in respective rows and col
colSums(is.na(sleep))
rowSums(is.na(sleep))