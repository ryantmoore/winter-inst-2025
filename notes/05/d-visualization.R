#Just the code please!


library(tidyverse)
library(ggthemes)
library(palmerpenguins)

mypenguins <- penguins[-4,]
mypenguins <- mypenguins[-271,]

ggplot(data = mypenguins)

ggplot(
  data = mypenguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
)


ggplot(
  data = mypenguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )+
  geom_point()


ggplot(
  data = mypenguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point()

ggplot(
  data = mypenguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point() +
  geom_smooth(method = "lm")

ggplot(
  data = mypenguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species)) +
  geom_smooth(method = "lm")


ggplot(
  data = mypenguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm")

ggplot(
  data = mypenguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Mypenguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()

ggplot(
  data = mypenguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(
    data = mypenguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) +
  geom_smooth(
    data = mypenguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )

ggplot(
  data = mypenguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point()

ggplot(mypenguins, aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point()

mypenguins |> 
  ggplot(aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point()

mypenguins %>%
  ggplot(aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point()


ggplot(mypenguins, aes(x = species)) +
  geom_bar()

ggplot(mypenguins, aes(x = fct_infreq(species))) +
  geom_bar()


ggplot(mypenguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 200)

ggplot(mypenguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 20)
ggplot(mypenguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 2000)


ggplot(mypenguins, aes(x = body_mass_g)) +
  geom_density()


ggplot(mypenguins, aes(x = species)) +
  geom_bar(color = "red")

ggplot(mypenguins, aes(x = species)) +
  geom_bar(fill = "red")

ggplot(mypenguins, aes(x = species, y = body_mass_g)) +
  geom_boxplot()

ggplot(mypenguins, aes(x = body_mass_g, color = species)) +
  geom_density(linewidth = 0.75)

ggplot(mypenguins, aes(x = body_mass_g, color = species, fill = species)) +
  geom_density(alpha = 0.5)

ggplot(mypenguins, aes(x = island, fill = species)) +
  geom_bar()

ggplot(mypenguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")


ggplot(
  data = mypenguins,
  mapping = aes(
    x = bill_length_mm, y = bill_depth_mm, 
    color = species, shape = species
  )
) +
  geom_point() +
  labs(color = "Species")


ggplot(mypenguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point()

#ggsave(filename = "penguin-plot.png")
