library("multcomp")
library("gplots")

library(readxl)


dat2 <- cbind(cholesterol,da)

str("dat2")

attach(dat2)

aov2way <- aov(response~trt+BP , data=da)

summary(aov2way)

detach(dat2)

print(dat2)


#plotmeans(response~trt+BP, xab="treatment" , ylab="response" , main = "Mean Plot\nwith 95% CI")

#da <- read_excel("C:\\Users\\student\\Desktop\\blood.xlsx")
#View(da)
