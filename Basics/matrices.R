#matrix - elements of same type

Salary
Salary[1,]
Salary[,1]
Salary[1,1]

#Building matrix
#matrix()
#rbind()
#cbind()

data = 1:20
c = matrix(data, 4,5)
c
r = matrix(data, 4,5, byrow = T)
r

data1 = 21:40

r1 = rbind(data, data1)
r1
c1 = cbind(data, data1)
c1

names(data) = 1:20
data
names(data) = NULL
data

#using rep function in two different ways
tempv1 = rep(c("a", "b", "c"), each =3)
tempv1
tempv2 = rep(c("a", "b", "c"), times =3)
tempv2

ma = matrix(tempv1, 3, 3)
ma

colnames(ma) = c("one", "two", "three" )
rownames(ma) = c(1,2,3)
ma
colnames(ma) = NULL
rownames(ma) = NULL
ma


#matrix operations

#for goals per match

x = FieldGoals/Games
x
round(x,1)

#visualization using matplot
?matplot

matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch =15:18, col = c(1:4,6))
legend("bottomleft", inset = 0.001, legend = Players, col=c(1:4,6), pch =15:18, horiz = F)


#Subsetting

Games
Games[1:3,6:10]
Games[,c("2009","2010")]

Games[1,]
Games[1,,drop=F]


#creating a function

func = function(data101){
  matplot(t(data101), type="b", pch =15:18, col = c(1:4,6))
  legend("bottomleft", inset = 0.001, legend = Players, col=c(1:4,6), pch =15:18, horiz = F)
  
}

func(FieldGoals/FieldGoalAttempts)
