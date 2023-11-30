#Conduct an ANOVA testing assessing whether experimental condition predicted differences in how Analytically someone recalls their memory and store the model in an object called m1
m1 <- aov(Analytic ~ Condition, data = df_analyses)

#Use the summary() function to print the model output and try to intepret the model yourself
summary(m1)

#Use the report() function to print the model interpretation
report(m1)