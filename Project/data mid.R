

dataset1<-dataset
dataset1$Assault[is.na(dataset1$Assault)]=mean(dataset1$Assault,na.rm = TRUE)

#Median

dataset1$Assault<-dataset$Assault[is.na(dataset1$Assault)]=median(dataset1$Assault, na.rm = TRUE)

#mean then meadin then average

# packages install

dataset1$Murder<-celling(dataset1$Murder)
install.packages("tidyverse")

# round off kora

dataset1$Murder<-ceiling(dataset1$Murder)

dataset1$Assault<-ceiling(dataset1$Assault)



dataset1$Assault = as.numeric(format(round(dataset1$Assault,0)))







# Urban population a outlaier replace 


dataset1$`Urban population (%)`[dataset1$`Urban population (%)` == 570]<-57

dataset1$`Urban population (%)`[dataset1$`Urban population (%)` == 6]<-60

dataset1$Assault[dataset1$Assault == 879]<-79


 
install.packages("dplyr")
library("dplyr")
# translation
dataset1 <- dataset1 %>% mutate(Type = case_when
(
  (dataset1$`Urban population (%)`) < 30 ~ "small",
  (dataset1$`Urban population (%)`) < 55  ~ "medium",
  (dataset1$`Urban population (%)`) < 75 ~ "large",
  (dataset1$`Urban population (%)`) >= 75 ~ "extra-lurge"
))

dataset1$Type <- factor(dataset1$Type, ordered = TRUE)
