x= read.table("Yeast_PPI.txt",header=T, sep = "\t" )
head(x)
class(x)
nrow(x)

library("igraph")

conx = graph.data.frame(x,directed = F)
class(conx)

deg = sort(degree(conx), decreasing = T)
max(degree(conx))
d = degree.distribution(conx)
plot(d)

#checking centrality and lithality rule
essential = read.table("essential.txt", header = T, sep = "\t")
ess = essential[,1]

a = noquote(names(which(deg >=1 & deg<2)))
b = noquote(names(which(deg >=2 & deg<5)))
c = noquote(names(which(deg >=5 & deg<10)))
d = noquote(names(which(deg >=10 & deg<20)))
e = noquote(names(which(deg >=20)))

length(a)
length(ess)

a1 = length(intersect(ess,a))/length(a)
b1 = length(intersect(ess,b))/length(b)
c1 = length(intersect(ess,c))/length(c)
d1 = length(intersect(ess,d))/length(d)
e1 = length(intersect(ess,e))/length(e)
file = c(a1,b1,c1,d1,e1)

#tiff("plot.tiff")
plot(file, xlab="degree", ylab="fraction of ess gene")
#dev.off()


diameter(conx)
names(deg[1])
con = delete_vertices(conx, names(deg[1]))
gsize(conx)
gsize(con)
diameter(con)

#effect on diameter
list = c()
list_r = c()
new = conx
new1 = conx
for(i in 1:100){
  new = delete.vertices(new, names(deg[i]))
  new1 = delete.vertices(new1, names(sample(deg[i])))
  list[i] = diameter(new)
  list_r[i] = diameter(new1)
}
plot(list, col="red")
lines(list_r)


#####################################
#effect on clusters
clist = c()
clist_r = c()
cnew = conx
cnew1 = conx
for(i in 1:100){
  cnew = delete.vertices(cnew, names(deg[i]))
  cnew1 = delete.vertices(cnew1, names(sample(deg[i])))
  clist[i] = clusters(cnew)$no
  clist_r[i] = clusters(cnew1)$no
}

plot(clist, col="red")
lines(clist_r)

#csize
cslist = c()
cslist_r = c()
csnew = conx
csnew1 = conx
for(i in 1:100){
  csnew = delete.vertices(csnew, names(deg[i]))
  csnew1 = delete.vertices(csnew1, names(sample(deg[i])))
  cslist[i] = clusters(csnew)$csize[1]
  cslist_r[i] = clusters(csnew1)$csize[1]
}

plot(cslist, col="red")
lines(cslist_r)

#avg. path length
apllist = c()
apllist_r = c()
aplnew = conx
aplnew1 = conx
for(i in 1:100){
  aplnew = delete.vertices(aplnew, names(deg[i]))
  aplnew1 = delete.vertices(aplnew1, names(sample(deg[i])))
  apllist[i] = average.path.length(aplnew)
  apllist_r[i] = average.path.length(aplnew1)
}

plot(apllist, col="red")
lines(apllist_r)

