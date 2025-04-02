library(naniar)
library(palmerpenguins)

miss_var_summary(penguins)

miss_case_summary(penguins)

library(gganimate)
library(gifski)
library(av)

anim = ggplot(mtcars, aes(mpg, disp)) + 
  geom_point() + 
  transition_states(gear, transition_length = 2, state_length = 1) +
  enter_fade() +
  exit_fade()

animate(anim, renderer = av_renderer())