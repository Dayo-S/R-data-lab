library(dplyr)
library(tidyr)
library(ggplot2)

# helps to not use exponential globally for high counts.
options(scipen = 999)

# loading the heart.csv and 2020-2025.csv (measures countries gdp)

heart_df <- read.csv("heart.csv")
gdp_df <- read.csv("2020-2025.csv")

# Summary Stats: Before creating numerical plots what are the stats age, heart rate, sex, and cholesterol for the heart dataset?

summary(heart_df$age)
summary(heart_df$thalach)
summary(heart_df$sex)
summary(heart_df$chol)

# Scatterplot: Does max heart rate decrease as person age increases.
heart_df %>% 
  ggplot(aes(x = age, y = thalach, color = factor(age))) +
  labs(title = "Ages Affect on Heart Rate", x ="Heart Rate", y = "Age", color = "Ages") +
  geom_point()


# Boxplot: Is there a difference in cholesterol distribution for men and women. 

heart_df %>% 
  ggplot(aes(x=factor(sex),y=chol, fill = factor(sex))) +
  labs(title = "Difference in Cholesterol Distribution Based on Sex", x ="Sex of Patient", y = "Cholesterol Level", fill = "Female: 0, Male: 1") +
  geom_boxplot() 
    

# Histogram: 2020 was an odd year economically what does the distribution of gdp look like accross all countries?
gdp_df_clean <- gdp_df %>% filter(is.finite(`X2020`), `X2020` > 0)

# Create the histogram
gdp_df_clean %>%
ggplot(aes(x = X2020)) +
    geom_histogram(bins = 30, fill = "seagreen") +
    labs(title = "Distribution of Country GDPs in 2020",
       x = "GDP (in USD)",
       y = "Number of Countries")
