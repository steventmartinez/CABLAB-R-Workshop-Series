#Subset a data frame with the following columns: "PID", "Section", "Stage", "Threat", "Group", "Condition", and "TOAccuracy"
df_new <- subset(df, select=c("PID", "Section", "Stage", "Threat", "Group", "Condition", "TOAccuracy"))

#Subset rows where the TOAccuracy score is less than .5
low.df <- subset(df_new, TOAccuracy < .5)

#Subset rows where the TOAccuracy score is greater than .5
high.df <- subset(df_new, TOAccuracy > .5)

#Merge the two data frames back together
merged_data <- merge(low.df, high.df, by=c("PID", "Section", "Stage", "Threat", "Group", "Condition", "TOAccuracy"), all.x=TRUE, all.y=TRUE)