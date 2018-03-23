snames = c('Anish','chirag','saransh','sreekesh','harsh')
course = c('data analyst','web','programming','mobile','app')
gender = c('M','M','M','M','M')
grades = c('A','S','S','B','A')
marks = floor(runif(5,50,100))
df2 = data.frame(snames,course,gender,grades,marks)  
df2
str(df2)
#we change factor to character as R will not allow to add names to it
df2$snames=as.character(df2$snames)
str(df2)
df2$course = factor(df2$course)
str(df2)
df2$grades=factor(df2$grades,ordered = T,labels = c('A','B','S'))
df2$grades
