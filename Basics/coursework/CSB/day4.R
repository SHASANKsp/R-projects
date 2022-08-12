#biodrid
#HPRD
#inact
#i2d
#dip
#mint
#corum
#reactome
#string


############################

library("igraph")

bp = read.csv("drug-target.csv", header = T, sep = "\t")
bpd = graph.data.frame(bp,directed = F)
plot(bpd)
#is.bipartite(bpd)

V(bpd)$type = bipartite.mapping(bpd)$type
#is.bipartite(bpd)
types = V(bpd)$type
deg = degree(bpd)
cent_df = data.frame(types,deg)
head(cent_df)


drug = cent_df[cent_df[,1]== FALSE,]
target = cent_df[cent_df[,1]== TRUE,]

head(drug[order(drug$deg, decreasing = TRUE),])
head(target[order(target$deg, decreasing = TRUE),])


humppi = read.csv("HPRD_PPI.csv", header = T, sep = "\t")
g1 = graph.data.frame(bp,directed = F)
deg_h = data.frame(degree(g1))

target_g = bpd[,2] 

deg_tar = deg_h[target_g,]
head(deg_tar)
median(deg_tar)

median(deg_h[,1])
