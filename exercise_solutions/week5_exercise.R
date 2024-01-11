#Create a vector that includes the following letters: "A", "B", "C", "D", "E", "F"
x3 <- c("A", "B", "C", "D", "E", "F")                     


#Create a for loop where, if i = A, print This value represents A", else, print "This value does not represent A"
for (i in 1:length(x3)) {  
  if (x3[i] == "A") {
    print("This value represents A") }
  else {
    print("This value does not represent A")
  }
}