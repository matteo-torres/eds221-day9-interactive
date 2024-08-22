library(reprex)
library(tidyverse)
library(palmerpenguins)

ggplot(data = penguins,
       aes(x = bill_length_mm, 
           y = flipper_length_mm)) %>%
  geom_point()

# Did you use `%>%` or `|>` instead of `+`?

datapasta::df_paste(head(penguins, 5) [, c("bill_length_mm", "flipper_length_mm")])

# create a reprex to reproduce error with a mini data set
my_data <- data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)

# update code with mini dat set
ggplot(data = my_data,
       aes(x = bill_length_mm, 
           y = flipper_length_mm)) %>%
  geom_point()

# here is my reprex
my_data <- data.frame(
  bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)

ggplot(data = my_data,
       aes(x = bill_length_mm, 
           y = flipper_length_mm)) %>%
  geom_point()

# copy reprex and put reprex() in the console