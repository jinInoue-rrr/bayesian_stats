library(tidyverse)

n = 100000
lambda = 2.1

df <- tibble(y = rpois(n= n, lambda = lambda))

gg <- df %>% 
  ggplot(aes(x = y)) + 
  geom_histogram(bins = 100) + 
  theme_bw()

ggsave(filename = "figure_2.1_left.png", plot = gg)




ni