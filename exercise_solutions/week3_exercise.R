#Create a new data frame called "df2" and subset the following columns from the df data frame: PID, Section, Stage, Fear.rating, and TOAccuracy
# Approach 1: Bracket notation
cols <- c("PID", "Section", "Stage", "Fear.rating", "TOAccuracy") #create a vector of column names that we want to subset
df2 <- df[, cols] #use bracket notation to pull the columns that we included in the "cols" vector from the df data frame.


#Approach 2: subset() function
df2 <- subset(df, select=c(PID, Section, Stage, Fear.rating, TOAccuracy))
