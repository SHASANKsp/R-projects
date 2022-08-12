#making a matrix with (array of numbers)(no. of rows)(no. of cols)
x = matrix(1:6,2,3)
x

#printing a matrix through ittration
for(i in 1:2){
  for(j in 1:3){
    print(x[i,j])
  }
}

#automated waay of printing a matrix
for(i in 1:nrow(x)){
  for(j in 1:ncol(x)){
    print(x[i,j])
  }
}


x=0
#print(x)
while(x<36){
  if(x!=7){
    print(x)
  }
  x=x+1
}


for(i in 1:35){
  if(i==7){
    next
  }
  print(i)
}

x = sample(1:100,replace=T)

for (i in x){
  if(x[i]<=30){
    next
  }
  print(x[i])
}

x[31]


data = mtcars
head(data)
dim(data)
x = data[,3]
for(i in 1:dim(data)[1]){
  if(x[i]<160){
    print(x[i])
  }
}

for(i in 1:dim(data)[1]){
  if(data[i,3] < 160){
    print(data[i,])
  }
}


#------------------------x-----