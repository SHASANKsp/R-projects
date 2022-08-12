#vector

vec = c(1,2,5,6,8)
is.numeric(vec)
is.integer(vec)
vec2 = c("h","ho","hoo","hooo")

seq(1,15) #works like :
seq(1,15,3)

rep("sha",5)

w = c("a","b","c","d","e")

w[1]
w[2]
w[-1]
w[-4]
w[1:3]
w[3:5]
w[-3:-5]
w[c(1,3,5)]
w[c(-2,-5)]

z = 1:5
y = 6:10
w = z + y
w

d = rnorm(5)
for(i in d){
  print(i)
}


#use of functions
#?function-name for help


#packages

install.packages("ggplot2", dependencies = T)
