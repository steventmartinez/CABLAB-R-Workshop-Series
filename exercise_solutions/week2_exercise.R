# For Mac
Path <- "/Users/tuh20985/Desktop/CABLAB-R-Workshop-Series-main/datasets/"

#set working directory
setwd(Path) #use the setwd() function to assign the "Path" object that we created earlier as the working directory

#Read in the df_wide CSV file
df_wide <- read.csv(file = "df_wide.csv")

#head()
head(df_wide)

#View()
View(df_wide)