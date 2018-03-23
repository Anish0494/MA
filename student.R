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

col2=student %>% select(feepaid, cat) %>% filter(cat=='GEN')
col2
col3=student %>% select(feepaid, cat) %>% filter(cat=='OBC')
col3
