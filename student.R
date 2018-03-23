#Denco Case

student = read.csv(file.choose())
student

library(dplyr)
names(student)
n=student %>% filter(student$attnd>0.8)
count(n)

revenue = student$feepaid
revenue=student$feepaid
sum(revenue)

library(data.table)
?sum
marks=rowsum(student$java,student$dbms,student$dwm,student$vlsi,student$cpp,)
marks
d1=as.data.table(student)
d1[,marks,by=student$sname]

count(student$btechfinal=='Pass')
