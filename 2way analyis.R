library("multcomp")
library(readxl)

dat2 <- cbind(cholesterol,da)

str("dat2")

attach(dat2)

aov2way <- aov(response~trt+BP , data=da)

summary(aov2way)

print(dat2)

detach(dat2)
