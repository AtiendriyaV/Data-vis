library("multcomp")
library("gplots")

dat<-mtcars


aov2way <- aov(mpg~cyl+hp , data=dat)

summary(aov2way)
