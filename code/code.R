#Dairy Production and Consumption
#milkcow_facts.csv
# This is data from tidy tuesday january 29 2019 
# It is comparing the rising price of rations to the price of milk both of which are in dollars per pound
# load tidyverse library into project 
library(tidyverse)

# plot of ration and milk price over a period of time and giving them unique colors

plot1 <- 
  ggplot(data= milkcow_facts) +
  geom_line(mapping = aes(x = year, y = dairy_ration, color = "Feed"))+
  geom_line(mapping = aes(x = year, y = avg_price_milk, color = "Milk"))

# add theme to plot
 
plot1 <- plot1 + theme_classic()

# add in axis labels and legend head

plot1 <- plot1 + labs(y = "Dollars Per Pound", 
                      x = "Years",
                      colour = "Legend")
plot1

ggsave("plot1.pdf")
