library(tidyverse)

vine_table <- read.csv(file='vine_table.csv')

paid <- subset(vine_table, vine == 'N')
unpaid <- subset(vine_table, vine == 'Y')

rating_means <-vine_table %>% group_by(vine) %>% summarize(mean=mean(star_rating), n=n())
rating_means
  
t.test(unpaid$star_rating, paid$star_rating)