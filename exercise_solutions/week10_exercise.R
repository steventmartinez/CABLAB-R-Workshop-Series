#Conduct a multiple linear regression assessing whether Time of Haunted house and Temporal Memory Accuracy independently predicted differences in how Analytically someone recalled their memory and store the model in an object called m1.
m1 <- lm(Authentic ~ TOAccuracy + Time_HH, data = df_analyses)

#Use the summary() function to print the model output and try to intepret the model yourself
summary(m1)

#Use the report() function to print the model interpretation
report(m1)