################################
#Author: Prerit Gupta
#Roll No: 14EC35001
#Topic: Analytics on "IRIS" data
################################
library(xlsx)
data = read.xlsx("../Data/IRIS.xlsx",sheetIndex = 1)

#(a)Calculate the population mean
s.len.mean = mean(data$SepalLengthCm)
s.wid.mean = mean(data$SepalWidthCm)
p.len.mean = mean(data$PetalLengthCm)
p.wid.mean = mean(data$PetalWidthCm)


data.s = data[sample(nrow(data), 50),]
sample.s.len.var = var(data.s$SepalLengthCm)
sample.s.wid.var = var(data.s$SepalWidthCm)
sample.p.len.var = var(data.s$PetalLengthCm)
sample.p.wid.var = var(data.s$PetalWidthCm)

population.s.len.var = var(data$SepalLengthCm)
population.s.wid.var = var(data$SepalWidthCm)
population.p.len.var = var(data$PetalLengthCm)
population.p.wid.var = var(data$PetalWidthCm)

