library("multcomp")
library("gplots")

library(readxl)

da <- read_excel("C:\\Users\\student\\Desktop\\blood.xlsx")
View(da)

dat2 <- cbind(cholesterol,da)

str("dat2")

aov2way <- aov(response~trt+BP , data=da)

summary(aov2way)

print(dat2)
