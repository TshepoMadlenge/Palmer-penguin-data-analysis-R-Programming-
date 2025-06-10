library(ggplot2)
library(palmerpenguins)
data(penguins)
View(penguins)

ggplot(data = penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g), color='black')+
  geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species))+
  labs(title="Palmer Penguins: Body Mass VS. Flipper Length", subtitle="Sample of the three penguins", caption="Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", color='purple', fontface="bold", size=4.5, angle=25)