
#A. 

#1) Import Dataset S1 and S2 and check which one is bipartite

library(igraph)

s1 = read.csv("SHASANKA SHEKHAR PADHI - EBV-EBV.csv", header = T)
colnames(s1) <- c("DB ORF","AD ORF")

s2 = read.csv("SHASANKA SHEKHAR PADHI - EBV-Human.csv", header = T)
colnames(s2) <- c("EBV-Bait","Human-Prey")
#class(s1)

sg1 = graph.data.frame(s1,directed = F)
sg2 = graph.data.frame(s2,directed = F)
#class(sg1)


#is.bipartite(sg1)
#is.bipartite(sg2)

bipartite.mapping(sg1)
V(sg2)$type <- bipartite_mapping(sg2)$type 
V(sg2)$color <- ifelse(V(sg2)$type, "lightblue", "salmon")
V(sg2)$shape <- ifelse(V(sg2)$type, "circle", "square")
#plot(sg2)
#summary(sg1)



#2) How many nodes and edges are featured in the EBV and EBV-Human network?
#for s1 dataset
#node
V(sg1)
vcount(sg1)
#edge
E(sg1)
ecount(sg1)

#for s2 dataset
#node
V(sg2)
vcount(sg2)
#edge
E(sg2)
ecount(sg2)


#3) How many nodes are there in largest connected component in the EBV 
#         and EBV-Human network?

#finding the nodes in the largest connected component
#in s1
csg1 = components(sg1)
max1 = max(csg1$csize)

#in s2
csg2 = components(sg2)
max2 = max(csg2$csize)






#B
# 1) Calculate degree of proteins in human protein interaction network and list 
#  top 10 highly connected nodes.

s3 = read.csv("SHASANKA SHEKHAR PADHI - HPRD_PPI.csv", header = T, sep = "\t")
colnames(s3) = c("Protein1","Protein2")
sg3 = graph.data.frame(s3,directed = F)

deg = degree(sg3)
deg
max_deg = sort(deg,decreasing = T)
list = c()
for(i in 1:10){
  list[i] = max_deg[i]
}
#list

#2) Based on the 'degree' of the target proteins and average degree of the 
# human network, what does this tell you about the kind of proteins EBV targets?

deg_h = data.frame(degree(sg3))
target_g = sg2[,2]
deg_tar = deg_h[target_g,]

head(deg_tar)

mean(deg_tar)
mean(deg_h[,1])


avg_sg3 = mean(deg)
avg_sg3

avg_sg2 = mean(degree(sg2))
avg_sg2

