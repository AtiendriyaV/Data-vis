library("multcomp")
library("gplots")

library(readxl)

da <- read_excel("C:\\Users\\student\\Desktop\\blood.xlsx")
View(da)

str("cholesterol")

attach(cholesterol)

aov2way <- aov(response~trt+BP , data=da)

summary(aov2way)

plotmeans(response~trt, xab="treatment" , ylab="response" , main = "Mean Plot\nwith 95% CI")

detach(cholesterol)

print(cholesterol)