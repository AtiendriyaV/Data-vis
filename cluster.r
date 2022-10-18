library(ggplot2)
library(cluster)
library(class)
library(fpc)
library(tidyr)

data('iris')
head(iris)
summary(iris)

png(file="cluster.png")
iris_tidy<-iris%>%gather(Key, Value, -Species)%>%separate(Key,c("Part", "Measure"),"\\.")

ggplot(iris_tidy, aes(x=Species, y=Value, color=Part, shape=Part))+geom_jitter()+facet_grid(.~Measure)

dev.off()