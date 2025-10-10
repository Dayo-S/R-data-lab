library(dplyr)
library(tidyr)
library(ggplot2)

# helps to not use exponential globally for high counts.
options(scipen = 999)


# loading the heart.csv and 2020-2025.csv (measures countries gdp)

heart_df <- read.csv("heart.csv")
gdp_df <- read.csv("2020-2025.csv")

# contingency table based on the age and chest pain type.

contingency_heart <- table(heart_df$age, heart_df$cp)
contingency_heart_margins <- addmargins(contingency_heart)
print(contingency_heart_margins)

# Pie chart to see the different chest pain types counts.

heart_df %>% 
  group_by(cp) %>% 
  summarise(N=n()) %>%
  ggplot(aes(x= "", y=N, fill=cp)) +
  geom_col() +
  coord_polar(theta="y") +
  theme_void() + 
  labs(title="Pie Chart of Chest Pain")

# Pie chart to see the different thalamessia counts (normal-1, fixed-2, reversible-3).

heart_df %>% 
  group_by(thal) %>% 
  summarise(N=n()) %>%
  ggplot(aes(x= "", y=N, fill= thal)) +
  geom_col() +
  coord_polar(theta="y") +
  theme_void() + 
  labs(title="Pie Chart of Thalassemia ")


# What is the GDP for certain Western countries in 2020?

gdp_df %>% filter(Country=="Germany" | Country=="United Kingdom" | Country =="United States" | Country=="France") %>%
  group_by(Country) %>% 
  summarise(N= X2020) %>%
  ggplot() + geom_col(aes(x=Country, y=N , fill = Country))

# Now what is the GDP for those same countries in 2025?

gdp_df %>% filter(Country=="Germany" | Country=="United Kingdom" | Country =="United States" | Country=="France") %>%
  group_by(Country) %>% 
  summarise(N= X2025) %>%
  ggplot() + geom_col(aes(x=Country, y=N , fill = Country))

#USA is dominant in gdp compared to France, Germany, UK lets see the sum of gdp from 2020 to 2025.

gdp_df %>% filter(Country == "United States") %>% group_by(Country) %>% 
  summarise(N=sum(across(everything()))) #used CO-pilot to figure out the sum across all rows
