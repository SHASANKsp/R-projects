str = c("shasank","tezash","aakanksha","bhavna","anjali")
grep("sh",str) #Find matches
grep("sh",str,ignore.case = TRUE) #find match without case sensitivity
grep("sh",str,ignore.case = TRUE, value = TRUE) #printing the matching values without case sensitivity
grepl("sh",str,ignore.case = TRUE) #gives logical variable

sub("sh","hs",str) #substitution only once
gsub("sh","hs",str) #global substitution

regexpr("sh",str)
gregexpr("sh",str)

grep("n",str,ignore.case = TRUE,invert = TRUE,value = TRUE)
install.packages("seqinr")
library("seqinr")

#sequence analysis

D = c("ATGCGGCATCGATACACGCATCGATCGATGCGCGATCGACT")
length(D)

d1 = strsplit(D,"")
d1
lengths(d1)

#install.packages("seqinr")
library("seqinr")
#toupper
#tolower

#require fasta file

d2 = read.fasta("example.fasta")
d2
class(d2)
lengths(d2)

count(d2[[1]],1) #mononeuclotide
count(d2[[1]],2) #dineuclotide

GC(d2[[1]])


for(i in 1:4){
  a = GC(d2[[i]])
  print(a)
}