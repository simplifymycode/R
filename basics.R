# R

install.packages("ggplot2")
library(ggplot2)

??read

?read.csv

planets = read.csv(file = "data/planets.csv", header = TRUE, sep = ";")

planets

str(planets)

planets$Name
planets$Size

planets$Name[1]
planets$Size[1]


graph <- ggplot(data = planets) +
  geom_point(aes(x = factor(planets$Name, level = planets$Name), 
                 y = planets$Size, 
                 colour = "red", 
                 size = 0, # contlrol size of filled part
                 stroke = 3), # control size of stroke
                 show.legend = FALSE) +
  ylim(10000,16000) + # control y-axis
  labs(title = "Planes",
       subtitle = "Solar system",
       x = "Planet",
       y = "Size",
       caption = "2019/03/23")

graph

ggsave("planets.png")



vignette("ggplot2-specs")



graph <- ggplot(data = planets) +
  geom_point(aes(x = planets$Size, 
                 y = planets$Domain, 
                 colour = "red", 
                 size = 0, # control size of filled part
                 stroke = 2), # control size of stroke
             show.legend = FALSE) +
  xlim(10000,15500) + # control x-axis
  ylim(100,300) + # control y-axis
  labs(title = "Planeten",
       subtitle = "Solar system",
       x = "Planet",
       y = "Size",
       caption = "2019/03/23")

graph
