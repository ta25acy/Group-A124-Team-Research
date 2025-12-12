setwd("C:\\Users\\nravi\\Documents")
analysis <- read.csv("Cost_of_Living_Index_2022.csv")
names(analysis)
myanalysis <- analysis[c("Cost.of.Living.Index", "Rent.Index")]
plot(
  myanalysis$Cost.of.Living.Index,
  myanalysis$Rent.Index,
  pch = 19,
  col = rgb(0, 0, 0, 0.3),
  main = "Cost of Living Index vs Rent Index",
  xlab = "Cost of Living Index",
  ylab = "Rent Index"
)
cor.test(
  myanalysis$Cost.of.Living.Index,
  myanalysis$Rent.Index,
  method = "pearson"
)
hist(
  myanalysis$Cost.of.Living.Index,
  main = "Histogram of Cost of Living Index",
  xlab = "Cost of Living Index",
  ylab = "Frequency"
)