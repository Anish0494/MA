#Denco Case

student = read.csv('student data.csv')
student

library(dplyr)
names(student)
n=student %>% filter(student$attnd>0.8)
count(n)

revenue = student$feepaid
revenue=student$feepaid
sum(revenue)

names(student)
str(student)

cols2 = c('attnd','btechmarks')
student[cols2]
cor(student[cols2])
cov(student[cols2])
plot(student[cols2])
abline(lm(btechmarks ~ attnd, data=student))
abline(v=.6)

model1 = lm(btechmarks ~ attnd, data=student)
summary(model1)

library(data.table)
?sum
student$total=student$cbnst+student$cpp
student$total
student[c('sname','total')]

student[student$btechfinal=='Pass',c('sname','btechfinal')]
library(dplyr)
student %>% select(sname, btechfinal) %>% filter(btechfinal=='Pass')
names(student)
student$btechfinal

col2=student %>% select(feepaid, total) %>% filter(student$cat=='GEN')
col2
cor(col2)
cov(col2)
mean(col2$total)
mean(col2$feepaid)

col3=student %>% select(feepaid, total) %>% filter(student$cat=='OBC')
col3
cor(col3)
cov(col3)
mean(col3$feepaid)
mean(col3$total)

#no of student which has marks greater in sem1 and less in sem2
count(student[student$sem1>student$sem2,c('sname','sem1','sem2'),])
