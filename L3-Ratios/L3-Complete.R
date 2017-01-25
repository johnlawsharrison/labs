#Welcome to Lab 3, please answer the following questions

#Install and require package MASS
library(MASS)
library (dplyr)


#Using the built in dataset anorexia, aggregate the data to look at:
#       1. the number of patients who received a treatment (choose one) who responded positively to treatment
#       2. the number of patients who received a treatment who either did not respond or responded negatively to treatment
#       3. the number of patients who were in the control group who responded positively to treatment
#       4. the number of patients who were in the control group who did not respond or responded negatively to treatment

#Such that you end up with a 2 by 2 table

data <- anorexia

#weight.decrease <- filter(data, weight.change <= 0, X1 == "Cont")
                   
#nrow(weight.decrease)

cbt_pos <- nrow(filter(data, Treat == "CBT", Postwt - Prewt > 0))
cbt_nonpos <- nrow(filter(data, Treat == "CBT", Postwt - Prewt <= 0))
control_pos <- nrow(filter(data, Treat == "Cont", Postwt - Prewt > 0))
control_nonpos <- nrow(filter(data, Treat == "Cont", Postwt - Prewt <= 0))

#What kind of analysis is appropriate to perform on a study like this?



#Perform the appropriate choice on the dataset



#What does your result tell you?





#Write a function that allows you to build the table based on what kind of treatment you want 
#that returns the appropriate calculation





#Which treatment worked better?