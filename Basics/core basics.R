
# Data type

#integer
x = 2L
typeof(x)

#double
y = 2.5
typeof(y)

#complex
z = 3 + 2i
typeof(z) 

#char
a = "hi"

#logical
q = T
typeof(q)

#arithmetic
A = 10
B = 20

c = A+B
c

#using a function
ans = sqrt(A)
ans

#concat two string
gret = "Hello"
name = "bob"

meg = paste(gret, name)
meg

#logical

4<5
5<3
3==2
3!=1


#while(abc){
#  do xyz
#}

count = 1
while(count < 12){
  print(count)
  count = count+1
}

for(i in 1:5){
  print("hi")
}

rm(a)
x = rnorm(1)
if(x>1){
  a = "greater than 1"
}else{
  a = "less or equal to 1"
}

#else if

