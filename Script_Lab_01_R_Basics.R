##########################################
## Class 01: R Basics and  Data Management
## Author: Esteban Lopez
## Course: URP 5313 - Urban Housing Policy and Analysis
## Program: Master in Urban Planning
## Institution: University of Texas at San Antonio
##########################################

#---- Part 1: Review  -------------------


### 1. Basic sintaxis

# R as a calculator

1+1

# Object creation

a<-1 + 1
a

x<-NULL
y<-c(TRUE,FALSE)

# Functions and Type of objects 

as.numeric(y)

years<-2010:2020

year<- seq(2010,2020,by = 0.5)

paste("hello","world",sep=" ")

tiktoc<-c("I", "am", "your", "father")

paste(tiktoc,collapse = " ")

obj2<- as.numeric(c(1,2,3,4,"Luke"))
is.na(obj2)

numbers_in_text<-c("1","2","3")
as.numeric(numbers_in_text)

m1<-matrix(1:4,2,2)
m1%*%t(m1)
diag(m1)
solve(m1)


a1<-array(1:12,dim = c(2,2,3))

d1<-data.frame(m1)
data("quakes") # promise
d1<-data.frame(quakes)

ls()

A<-3L

l1<-list(puppy=A,years,tiktoc,m1)


# Object Manipulation
ls()

A<-1L

class(A)
typeof(A)

length(years)
dim(m1)

object.size(d1)

names(d1)
head(d1)
tail(d1)

rm(A)

#Bonus: erase all objects from the environment?
rm(list=ls())

# Indexing use of []

length(years)
years[11]

dim(m1)
m1[1,2]

dim(a1)
class(a1)
a1[2,1,3]

l1[2]
l1[2][[1]][1:2]

l1[[2]][3:5]

l1$puppy

d1[1,]
d1[,1]
d1[,'lat']
d1$mag[seq(1,16,2)]
d1$lat[1:4]

d1[,'lat']
d1[1:4,c('lat','long')]

d1$mag>5
table(d1$mag>5)
d1[d1$mag>6,'stations']

d1$dummy_5up<-as.numeric(d1$mag>5)
head(d1)

# Distinguish between:
#       functions VS. objets:
#       numbers/parameters vs. arguments:
#       
# Fucntions: word/letter + () parenthesis with arguments separated by commas 
# Objects: word/letter left to the <- sign 


#---- Part 2: Loops  -------------------

A<-2

if(A==1){
  print("A es un objeto con un elemento numérico 1")
} else {
  print("A no es igual a 1, pero no se preocupe que lo hacemos")
  A<-1L
}

A<-1
class(A)
typeof(A)

dim(A)
length(A)

# For loop

for(i in 1:5){
  print(paste("Me le declaro a la ", i))
  Sys.sleep(2)
  print("no mejor no... fail!")
  Sys.sleep(1)
}

i<-1
eps<-50/(i^2)
while(eps>0.001){
  eps<-50/(i^2)
  print(paste("eps value es still..", eps))
  i<-i+1
}

