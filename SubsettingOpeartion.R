# 4. Read the loan data excel file (uploaded in the course material section) into a frame and then export only those rows with age greater than 30 
# and unemployed to?another sheet of the same excel file.

install.packages("rJava") 
install.packages("xlsxjars") 
install.packages("xlsx")


install.packages("rJava")
library(rJava)
install.packages("xlsx")
library(xlsx)

view(loanData)
newDataset <- subset(loanData, Age > 30 & Job_status == "unemploye")
newDataset
write.xlsx(newDataset, sheetName= "filterData", append = TRUE)

