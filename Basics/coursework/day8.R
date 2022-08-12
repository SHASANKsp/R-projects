x= read.csv("covid19_data.csv")
head(x)

summary(x)
install.packages("Hmise")
library("Hmise")

desc(x)
glimpse(x)
sapply(x,mean, na.rm = TRUE)
range(x$Cases)
max(x$Cases)
min(x$Cases)
var(x$Cases)
sd(x$Cases)


#t test

#for p>0.05 accept null hypothesis
#shapiro test - to test the normality

hist(mtcars$qsec)
shapiro.test(mtcars$qsec)

# t test
#for normaly distributed data
#parametric test

#H0 mean is zero
#H1 mean is not zero

#t = t.test(mtcars$qsec)
#t



#wilcoxon signed rank test
a = c(20,29,24,19,20,22,28,23,19,19)
mean(a)
wilcox.test(a,mu=20)



#two sample t test

s = c(0.80,0.83,1.89,1.04,1.45,1.38,1.91,1.64,0.73,1.43)
d = c(1.5,0.88,0.90,0.74,1.12)

hist(s)
hist(d)

shapiro.test(d)
t.test(s,d)
t.test(s,d, alternative = c("greater"))

#paired t test
s1 = c(0.79,0.80,1.90,1.00,1.40,1.30,1.89,1.60,0.71,1.46)

t.test(s,s1,paired = TRUE,alternative = c("greater") )
