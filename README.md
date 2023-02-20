# ggschemes

This package includes additional themes and scales for [ggplot2](https://github.com/tidyverse/ggplot2) based on popular color schemes, as well as tools to easily make your own. For a proper introduction, read the package vignette.

## Installation

The package is not on CRAN, but you can install it directly from github using

```R
devtools::install_github("kssrr/ggschemes")
```

## Examples

### Dracula Dark Horizontal:

```R
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species, shape = Species)) +
  geom_point(size = 4) +
  theme_dracula_dark_horizontal() +
  scale_color_dracula(palette = "dark") +
  labs(
    title = "Sepal Length vs. Sepal Width", 
    subtitle = "...for Various Species of Iris",
    x = "Sepal Width",
    y = "Sepal Length"
  )
```

![dracula_dark_horizontal](https://user-images.githubusercontent.com/87900554/179606478-8cc315fc-e8fe-4753-b26f-e2ed7d8aee73.png)

### Monokai Dark:

```R
ggplot(mtcars, aes(wt, mpg, color = factor(cyl), shape = factor(cyl))) +
  geom_point(size = 4) +
  theme_monokai_dark() +
  scale_color_monokai(palette = "dark") +
  labs(
    title = "Car Weight vs. Miles per Gallon",
    subtitle = "...and number of cylinders",
    x = "Weight",
    y = "Miles per Gallon",
    color = "Cylinders",
    shape = "Cylinders"
  )
    
```

![monokai_dark](https://user-images.githubusercontent.com/87900554/179606758-552b492b-24f1-4dc6-93eb-15b6de919245.png)

### Dracula Light:

```R
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species, shape = Species)) +
  geom_point(size = 4) +
  theme_dracula_light_horizontal() +
  scale_color_dracula() +
  labs(
    title = "Sepal Length vs. Sepal Width", 
    subtitle = "...for Various Species of Iris",
    x = "Sepal Width",
    y = "Sepal Length"
  )
```

![dracula_light](https://user-images.githubusercontent.com/87900554/179606842-e24fa186-e4f8-41c5-9a5a-c137db28a79b.png)

### Gruvbox Light Horizontal:

```R
ggplot(mpg, aes(cty, hwy)) +
    geom_smooth(
      method = "lm", 
      color = gruvbox$light("lightblue"), 
      se = FALSE
    ) +
    geom_count(color = gruvbox$light("red"), show.legend = FALSE) +
    theme_gruvbox_light_horizontal() +
    labs(
      title = "City vs. Highway Mileage",
      subtitle = "...for cars from various manufacturers",
      x = "City mileage",
      y = "Highway mileage",
      n = "Count"
    )
```

![gruvbox_light_horizontal](https://user-images.githubusercontent.com/87900554/179606904-ff4ca9b5-eed8-4009-9cc7-e20f63ef023f.png)

So far, the package includes three color schemes: [Gruvbox](https://github.com/morhetz/gruvbox), [Dracula](https://github.com/dracula/dracula-theme) and [Monokai](https://monokai.pro/), each with a light and dark variant.
