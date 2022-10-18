input <- iris[,1:4]
kmeans_fit <- kmeans(input, centers=3, nstart=20)

kmeans_fit

png(file="kmean.png")
plotcluster(input, kmeans_fit$cluster, xlab="No of groups")
table(kmeans_fit$cluster, iris$Species)
dev.off()