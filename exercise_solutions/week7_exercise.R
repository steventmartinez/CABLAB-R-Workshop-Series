# For Mac
Path <- "/Users/tuh20985/Desktop/CABLAB-R-Workshop-Series-main/datasets/"

#set working directory
setwd(Path) #use the setwd() function to assign the "Path" object that we created earlier as the working directory

#Read in the df_wide_exercise.csv file
df_wide_exercise <- read.csv(file = "frightnight_wide_exercise.csv")


#Approach 1: Basic Pivot longer
df_long <- df_wide_exercise %>% pivot_longer(
  cols=c("Asylum.TOAccuracy", "GhostlyGrounds.TOAccuracy", "DevilsDen.TOAccuracy", "Infirmary.TOAccuracy"), #The names of the columns to pivot
  names_to = "Section", #The name for the new character column
  values_to = "TOAccuracy") #The name for the new values column


#Approach 2: Pivot longer using grep function
df_long <- df_wide_exercise %>% pivot_longer(
  cols = grep("\\.", colnames(df_wide_exercise)),
  names_to = c("Section", ".value"), 
  names_sep = "\\.",
  values_drop_na = TRUE)