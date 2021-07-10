########################################
# OSA Use Case
#
# Simple ETL process on a single Excel file
#

# Clear the working space
rm(list=ls())

Input_file <- "Raw_data.xlsx"
Output_file <- "OSA_DB_UPM_2.xlsx"

Data_Directory <- "C:/Users/Samy/Desktop/OSA Case/"

# readxl package to read an Excel file

library(readxl)

df_tmp <- read_excel(paste(Data_Directory, Input_file, sep = ""))

typeof(df_tmp)
is.data.frame(df_tmp)

# df_tmp is NOT only a data frame

class(df_tmp)
df_tmp = as.data.frame(df_tmp)
class(df_tmp)

######## PREPARING THE DATA FRAME 
# Select only those columns (variables) we are going
# to work with:
# Patient, Gender, IAH, Peso, Talla, Edad, PerCervical

library(dplyr)

df_tmp1 <- select(df_tmp, Patient, Gender, IAH, Peso, Talla, Edad, PerCervical)

# Visualize data

library(visdat)
vis_dat(df_tmp1)

### HOW MANY PATIENTS?
length(df_tmp1$Patient)

### HOW MANY MALE /FEMALE
hombre=df_tmp1[df_tmp1$Gender=='hombre',]
mujer=df_tmp1[df_tmp1$Gender=='mujer',]

# Remove NaN values
library(naniar)

# Now change -1 values for NA in all columns (i.e. variables)
df_tmp2 <- replace_with_na_all(df_tmp1,condition = ~.x == -1)

# Finally remove (drop out) all rows containing a NA
# at least one column

# tidyr package to "tidy" our data

library(tidyr)

df_final <- df_tmp2 %>% drop_na()

#####   AFTER CLEANING:
#####
#####       HOW MANY PATIENTS?
length(df_final$Patient)

#####       HOW MANY MALE /FEMALE?

######### SAVING CLEAN DATA ##################################
# Write the clean data into Output_file with writexl package

library(writexl)

# Change name of columns

df_final <- df_final %>% rename(Weight = Peso,
                                Height = Talla,
                                Age = Edad,
                                Cervical = PerCervical) 

df_final$Weight = as.numeric(df_final$Weight)  # need to convert character to numeric

df_final=filter(df_final,Weight>=0) ## remove NA

# Feature Engineering

## Define of BMI
df_final$BMI <-
  with(df_final, Weight / (Height/100.0)^2)

## Add categorical feature OSA
#     Healthy (IAH <= 10)
#     Mild (10<IAH<30)
#     Severe (IAH >=30)

library(dplyr)

df_final <- df_final %>%
  mutate(OSA = ifelse(IAH <= 10, "Healthy",
                      ifelse(IAH>=30, "Severe", "Mild")))

vis_dat(df_final)

# Output into excel file

write_xlsx(df_final,
           paste(Data_Directory, Output_file, sep = ""))

