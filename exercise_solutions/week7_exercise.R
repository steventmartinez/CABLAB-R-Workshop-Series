#Read in the df_wide.csv file
df_wide_exercise <- read.csv(file = "df_wide_exercise.csv")


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