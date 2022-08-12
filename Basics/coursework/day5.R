install.packages("dplyr",dependencies = T)
library("dplyr")
search()
#getwd()
#setwd("address")

rclass1 = read.table("R_class_2021.txt",header = T,sep= "\t")
class(rclass1)
head(rclass1)

rclass2 = read.csv("R_class_2021.csv")
class(rclass2)
head(rclass2)

#rclass3 = for exl java doesnt work so XLConnect wouldn't be loaded

rclass3 = read.xls("R_class_2021.xls")
class(rclass)
head(rclass)

#rjson for reading json file
#XML for htlm file
dim(rclass1)
nrow(rclass1)
nrow(rclass1)
colnames(rclass1)

str(rclass1)


rclass1[3:5,]

x = rclass1[,1]

for(i in 1:dim(rclass1)[1]){
  if(x[i]<50.0){
    print(rclass1[i,])
  }
}

rclass1[rclass1$Time<50,]


#using dplyr for subsetting 
a = select(rclass1,Time:Email)
a
b = select(rclass1,-(Time:Email))
b

nrow(filter(rclass1,Department=="DoSCB" & R_course=="Regular"))

c = rename(rclass1,SECs = Time)
head(c)

d = mutate(rclass1, min = Time/60 )
head(d)

e = group_by(rclass1, Department)

rename(rclass1,SECs = Time) %>% group_by(Department) %>% summarise(mean(SECs))

mutate(rclass1, min = Time/60 ) %>% group_by(Department) %>% summarise(mean(min))
head(rclass1)

group_by(rclass1, Department) %>% summarise(mean(Programming))
