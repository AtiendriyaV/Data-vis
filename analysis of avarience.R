install.packages('multcomp')

library("multcomp")


str("cholesterol")

attach(cholesterol)

aov_model <- aov(response~trt)

summary(aov_model)
library("gplots")

plotmeans(response~trt , xab="treatment" , ylab="response" , main = "Mean Plot\nwith 95% CI")

detach(cholesterol)

print(cholesterol)