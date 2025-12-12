View(Cost_of_Living_Index_2022_2_)
data <- read_xlsx("Cost_of_Living_Index_2022 (2).xlsx")
names(data)
mydata <-data[c("Cost of Living Index","Rent Index")]
plot(mydata$"Cost of Living Index",mydata$"Rent Index",
     pch = 19,
     col = rgb(0,0,0,0.3),
     main = "Cost of Living Index vs Rent Index",
     xlab = "Cost of Living Index",
     ylab = "Rent Index"
)
cor.test(mydata$"Cost of Living Index", mydata$"Rent Index", method = "pearson")
hist(mydata$"Cost of Living Index",
     main = "Histogram of Cost of Living Index",
     xlab = "Cost of Living Index",
     ylab = "Frequency"
)

