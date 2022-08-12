a = c(10,20,30,40)
b = c("book","pen","textbook","pencil_case")
c = c(TRUE,FALSE,TRUE,FALSE)
d = c(2,5,8,10)
df = data.frame(a,b,c,d)

df[1:3,3:4]

df[5,] = c(50, "eraser", FALSE , 4)
df
subset(df, subset = c == TRUE)
result = data.frame(name = c("shasank","bhavna","debashis","jashmin"), mark = c(91,95,98,89))

mean(result[,2])
result[1:2,2] = NaN
result

is.na(result)
table(is.na(result))
?mean

mean(result[,2],na.rm = TRUE)
?na.omit

r= na.omit(result)
r


install.packages("dplyr")
library("dplyr")

?readline
x= readline()
if(x>3){
  print(10)
}else{
  print(0)
}

for (i in 1:35)
  if(i!=7){
    print(i)
  }


c= c(5,3,9,4)
c[1]
for (i in c)
  print (i)
