data(ToothGrowth)

# description of the dataset
help(ToothGrowth)

summary(ToothGrowth)

mask <- ToothGrowth$supp=="OJ"
TG.oj <- subset(ToothGrowth, mask)
TG.vc <- subset(ToothGrowth, !mask)
t.test(TG.oj$len, TG.vc$len, paired=FALSE)
t.test(ToothGrowth$len)
