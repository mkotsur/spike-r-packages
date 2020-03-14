library('coronavirus')

# Print some text info about the dataset
str(coronavirus)
print(summary(coronavirus))

library('ggplot2')

library('dplyr')
# https://www.tidyverse.org/
# https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/group_by

cv = coronavirus %>%
  filter(Country.Region == 'Mainland China' & type == 'recovered')
  

head(cv)

cv1 = cv %>% group_by(date) 

head(cv1)


# %>% summarise(sum_cases = sum(cases))
cv2 = cv1 %>% summarise(sum_cases = sum(cases))
head(cv2)


p=ggplot(cv2,aes(y=sum_cases,x=date))
p + geom_point(size=1)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L
