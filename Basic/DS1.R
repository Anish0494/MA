#data structure in R
#vectors----
#FOR SIMPLY ASSIGN
(v1=c('A','B','C'))
#for printing the value along with assign
(v2<-c(1,2,3))
(v3=c(TRUE,FALSE,TRUE))
v4=1:10
v5 = seq(1,10,2)
v4; v5
v4[1:5]

#DON'T PRINT ONE
v4[-1]
v4[-c(1,3,4)]

#FOR PRINTING A AND C WHICH IS THERE IN V1
v1[v1 %in% c('A','C')]
v7=c('C','B')
#v1[v1 %in% v7]

#for giving a numeric value to the alphabetic value
(v8 = 1:5)
names(v8) = c('anish','shlok','chirag','saransh','sreekesh')
v8
v8['anish']
v8[3]

#for finding type of variable
str(v8)
str(v1)
class(v8)
class(v1)


#dataframe: - for using combination of both character and numeric
df=data.frame(rollno=c(1,2,3),name=c('anish','chirag','saransh'),
              course=c('CSE','CSE','ECE'),dept=c('DEPT1','DEPT1','DEPT2'),
              marks=floor(runif(3,50,100)))
df
df=fix(df)
str(df)
class(df)
#rm(list=ls())
ls()

#list can have different datatype
(mylist1=list(1,df,v4))

#matrix
?matrix#for finding about the syntax
(mymatrix = matrix(1:24,ncol=4))
(mymatrix = matrix(1:24,nrow=4))
(mymatrix = matrix(1:24,ncol=4,byrow = TRUE))


#array
(myarray = array(1:24,dim=c(4,3,2)))
(myarray = array(1:24,dim=c(4,3,2)))


