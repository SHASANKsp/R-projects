dataset <- read.table("D:/M Tech/Cource/sem 2/coursera/heart-ch.txt", header = TRUE, sep=",", quote="")
class(dataset)

nrow(dataset)
ncol(dataset)
dim(dataset)
head(dataset, 0)
summary(dataset)

#dealing with the missing values

md.pattern(dataset)
mice_plot <- aggr(dataset, col=c("green","red"),
                  numbers=TRUE, sortVars=TRUE,
                  labels=names(dataset), cex.axis=.7,
                  gap=3, ylab=c("Missing data","Pattern"))


dataset[,"chol_imputed"] <- with(dataset, impute(chol, mean))
summary(dataset)

#normalization of the dataset

dataset_n <- Normalize(~. , data = dataset)

#Discretization

dataset$chol_bin <- as.numeric(cut2(dataset$chol_imputed, g=3))
dataset[,"chol_bin"] <- as.numeric(cut(dataset[,"chol_imputed"], 5))

#Data understanding

ggplot(dataset,aes(x=age,y=chol, color=num)) + geom_point(size = 4)
ggplot(dataset, aes(chest_pain, fill=factor(num))) + geom_bar()
ggplot(dataset, aes(x=age, fill=factor(num))) + geom_bar()


#-------------------- for assignment 

library("Hmisc")
library("mice")
library("VIM")
library("ggplot2")

dc <- read.table("D:/M Tech/Cource/sem 2/coursera/heart-c.txt", header = TRUE, sep=",", quote="")
dh <- read.table("D:/M Tech/Cource/sem 2/coursera/heart-h.txt", header = TRUE, sep=",", quote="")

nrow(dc)
nrow(dh)
ncol(dc)
ncol(dh)
summary(dc)

md.pattern(dc)
md.pattern(dh)

str(dataset)

md.pattern(dataset)
mice_plot <- aggr(dataset, col=c("green","red"),
                  numbers=TRUE, sortVars=TRUE,
                  labels=names(dataset), cex.axis=.7,
                  gap=3, ylab=c("Missing data","Pattern"))


dataset[,"chol_imputed"] <- with(dataset, impute(chol, mean))

dataset$chol_bin <- as.numeric(cut2(dataset$chol_imputed, g=3))
dataset[,"chol_bin"] <- as.numeric(cut(dataset[,"chol_imputed"], 5))


ggplot(dh,aes(x=age,y=chol, color=num)) + geom_point(size = 4)
ggplot(dh, aes(chest_pain, fill=factor(num))) + geom_bar()
