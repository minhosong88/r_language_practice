################ CVS ###############
# CSV input and output
ex <- read.csv('example.csv')
# read.csv or write.csv
# help(read.csv)

############## EXCEL ###############
# Excel files
# install.packages('readxl')
# library(readxl)
# Each sheet is considered a dataframe
library(readxl)
# Return the names of sheets
excel_sheets('Sample-Sales-Data.xlsx')

# read_excel('file.xlsx' , sheet = 'sheet_name')
df <- read_excel('Sample-Sales-Data.xlsx', sheet = "Sheet1")
head(df)
sum(df$Value)
summary(df)

# Read all the workbook(all the sheets in the excel)
entire.workbook <- lapply(excel_sheets('Sample-Sales-Data.xlsx'), read_excel, path='Sample-Sales-Data.xlsx')
print(entire.workbook)


# Write to Excel
# require: install.packages('xlsx')
library(xlsx)
head(mtcars)
write.xlsx(head(mtcars), "output_example.xlsx")
excel_sheets('output_example.xlsx')
read_excel('output_example.xlsx', sheet =  'Sheet1')





