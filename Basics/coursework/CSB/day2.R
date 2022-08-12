install.packages("igraph")
library("igraph")

#making an empty graph with 10 node and directed
g1 = graph.empty(n=10,directed = TRUE)
#g1
#class(g1)
plot(g1)

#making a complete graph with 10 node undirected
g2 = graph.full(n=10)
plot(g2)

#making a graph with 3 node, directed and 3edges as given
g3 = graph(edges = c(1,2, 2,3, 3,1), n=3, directed = TRUE)
plot(g3)

#making two star graph with node 10 directing in and out respectively
g4 = graph.star(n=10, mode="in")
g41 = graph.star(n=10, mode="out")
plot(g4)
plot(g41)

#making a ring graph with node 10 and undirected
g5 = graph.ring(n=10)
plot(g5)


#vertex count
vcount(g5)
#edge count
ecount(g5)
#shows all the nodes
V(g5)
#points to a particular node
V(g5)[1]
#shows all edges in the graph
E(g5)
#shows the neighbors of the node of intrest
neighbors(g5, V(g5)[3])


g6 = graph.star(n=10, mode="undirected")
plot(g6)
#finds if the graph is directed or not
is.directed(g4)
is.directed(g6)
#finds if the two node of the graph are connected or not
#(graph,node1,node2)
are.connected(g6,V(g6)[1],V(g6)[3])

#adjacency matrix of the graph
get.adjacency(g6)
get.adjacency(g5)
get.adjacency(g4)
get.adjacency(g3)
get.adjacency(g2)

#writing a formula for making a undirected graph with 4node
g7 = graph.formula(A-B,B-S,S-D,S-A,B-D)
plot(g7)
#writing a formula for making a directed graph with 4node
g8 = graph.formula(A-+B,B-+S,S-+D,S-+A,B-+D)
plot(g8)
#writing a formula for making a bidirected graph with 4node
g9 = graph.formula(A+-+B,B+-+S,S+-+D,S+-+A,B+-+D)
plot(g9)

#finding no. of clusters in the network
no.clusters(g9)




install.packages("tcltk2", dependencies = True)
library("tcltk2")
#search()

#interactive graph
tkplot(g9)
#3D graph
rglplot(g9)


#random graph based on Erdos-Renyi model (n=no. of vertices, p=probability for an edge)
#?sample_gnp
g10 = sample_gnp(100,1/80)
tkplot(g10)
rglplot(g10)
no.clusters(g10)

#random graph based on Erdos-Renyi model (n=no. of vertices, m=no. of edges)
#?sample_gnm
g11= sample_gnm(100,30)
tkplot(g11)
rglplot(g11)
no.clusters(g11)

#to get the degree distribution of the particular graph
d = degree.distribution(g11)
plot(d)

#making a small world network
g12 = sample_smallworld(dim = 2, size = 10, nei = 1, p=0.1)
plot(g12,vertex.size= 6, vertex.label= NA)
no.clusters(g11)

#making the barabasi network
g13 = barabasi.game(1000,directed = F)
plot(g13,vertex.label= NA)
d = degree.distribution(g13)
plot(d)





x = read.csv("D:/M Tech/Cource/sem 2/CSB/LAB/MK/us_companies_ownership.csv",header=T)
#converting data frame to graph
conx = graph.data.frame(x,directed = F)
plot(conx,vertex.size=4,vertex.label=NA)

c= components(conx)
#c$membership
#c$csize
#c$no

#loading yeast data from igraph database
library(igraphdata)
data(package = "igraphdata")
data("yeast")
degree.distribution(yeast)
plot(degree.distribution(yeast))

degree(yeast)
betweenness(yeast)
components(yeast)

#clustering cofficient for whloe network asa well as for each node
transitivity(yeast)
transitivity(yeast,type = c("local"))


yeast1 = delete_vertices(yeast,c(1,5))
write_graph(yeast1,"D:/M Tech/Cource/sem 2/CSB/LAB/MK/yeast_try.csv",format = "edgelist")
