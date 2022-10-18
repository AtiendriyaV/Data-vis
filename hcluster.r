Clusters <- hclust(dist(iris[,1:4]))
plot(Clusters,xlab="cluster",ylab="height of dem")

cluster2<-hclust(dist(iris[1,4]),method='average')
plot(cluster2,xlab="cluster",ylab="height of dem")

clustercut2 <- cutree(cluster,k=3)
rect.hclust(cluster,k=3,broder=2:6)