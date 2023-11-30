#1) Create a bar plot visualizing how Temporal Memory Accuracy scores differ by experimental condition across The Immediate and 1-week Delay study visits
#2) Add a plot title, x-axis title, and y-axis title

ggplot(data = df_plot, aes(x = Condition, y = TOAccuracy, fill = Condition)) + #Using fill = Group allows us to color-code the plot according to Group
  geom_bar(stat="identity") + #Generate a bar plot
  labs(x = 'Experimental Condition', y = 'Temporal Memory Accuracy', title = "Temporal Memory Accuracy by Condition") + #Define a plot title, an x-axis title, and a y-axis title
  facet_wrap(~Stage) #Split the graphs based on the Stage variable