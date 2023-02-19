# Light:
gruvbox_light_colors <- c(
  `white` = "#fbf1c7",
  `lightgrey` = "#928374",
  `lightred` = "#cc241d",
  `red` = "#9d0006",
  `lightgreen` = "#98971a",
  `green` = "#79740e",
  `lightyellow` = "#d79921",
  `yellow` = "#b57614",
  `lightblue` = "#458588",
  `blue` = "#076678",
  `lightpurple` = "#b16286",
  `purple` = "#8f3871",
  `lightaqua` = "#689d6a",
  `aqua` = "#427b58",
  `grey` = "#7c6f64",
  `black` = "#3c3836"
)

# Dark:
gruvbox_dark_colors <- c(
  `white` = "#ebdbb2",
  `lightgrey` = "#a89984",
  `lightred` = "#fb4934",
  `red` = "#cc241d",
  `lightgreen` = "#b8bb26",
  `green` = "#98971a",
  `lightyellow` = "#fabd2f",
  `yellow` = "#d79921",
  `lightblue` = "#83a598",
  `blue` = "#458588",
  `lightpurple` = "#d3869b",
  `purple` = "#b16286",
  `lightaqua` = "#8ec07c",
  `aqua` = "#689d6a",
  `grey` = "#928374",
  `black` = "#282828"
)

#' Function to access colors from a colorscheme
#'
#' These functions are named after color schemes and are used to extract color 
#' hexcodes from a color scheme by the name of the color.
#' 
#' @param ... Colors to extract.
#' @return A named color hex code.
#' @examples 
#' gruvbox$dark("blue", "lightblue") # access colors
#' with(mtcars, plot(x = mpg, y = wt, col = dracula("pink"))) # use them inside a function
#' gruvbox$light("blue")
#' gruvbox$dark("blue")
#' monokai("blue")
#' dracula("blue")
#' @export
gruvbox <- list(
  light = make_colorscheme(gruvbox_light_colors),
  dark = make_colorscheme(gruvbox_dark_colors)
)

gruvbox_palettes <- list(
  `light` = gruvbox$light(
    "red", "lightred", 
    "green", "lightgreen", 
    "yellow", "lightyellow", 
    "blue", "lightblue", 
    "purple", "lightpurple", 
    "aqua", "lightaqua"
  ),
  `dark` = gruvbox$light(
    "lightred", "red", 
    "lightgreen", "green", 
    "lightyellow", "yellow", 
    "lightblue", "blue",
    "lightpurple", "purple", 
    "lightaqua", "aqua"
  ),
  `cold` = gruvbox$dark("blue", "white"),
  `rank` = gruvbox$dark("red", "green")
)

#' Function to access palettes
#' 
#' Used to access palettes & use them with ggplot objects.
#' 
#' @param palette Name of the color palette.
#' @param reverse Logical; reverse the order of colors in the palette.
#' @param ... Additional arguments to pass to colorRampPalette().
#' @return A color palette.
#' @examples 
#' dracula_pal("light")
#' dracula_pal("dark")
#' gruvbox_pal("dark")
#' monokai_pal("dark")
#' @export
gruvbox_pal <- make_palette(gruvbox_palettes)

# Constructing scales: 

#' Color scales for ggschemes
#' 
#' Color scales for ggschemes' color schemes and themes, to be used with ggplot
#' objects.
#' @param palette Palette to use for constructing the color scale. Defaults to "light".
#' @param discrete Logical; true means discrete scale, false means continuous scale.
#' @param reverse Logical; reverse the order of the color scale?
#' @examples
#' mtcars |> 
#'   ggplot(aes(wt, mpg, color = factor(cyl))) +
#'   geom_point() +
#'   theme_dracula_dark() +
#'   scale_color_dracula(palette = "dark")
#' @export
scale_color_gruvbox <- make_color_scale(gruvbox_pal, "gruvbox_")

#' Fill scales for ggschemes
#' 
#' Fill color scales for ggschemes' color schemes and themes, to be used with ggplot
#' objects.
#' 
#' @param palette Palette to use for constructing the color scale. Defaults to "light".
#' @param discrete Logical; true means discrete scale, false means continuous scale.
#' @param reverse Logical; reverse the order of the color scale?
#' @examples
#' mtcars |> 
#'   dplyr::count(cyl) |> 
#'   ggplot(aes(factor(cyl), n, fill = factor(cyl))) +
#'   geom_col() +
#'   theme_monokai_dark() +
#'   scale_fill_monokai(palette = "dark")
#' @export
scale_fill_gruvbox <- make_fill_scale(gruvbox_pal, "gruvbox_")

# Constructing themes:

#' Plot themes from ggschemes
#' 
#' These are the themes exported from ggschemes. The themes themselves simply 
#' apply the colors determined by the function factory to a theme template, so if
#' you want to modify the plot theme, you are likely better off modifying the
#' underlying template, or simply adding a theme()-call to your plot to override 
#' the settings made by these themes. Best used in conjunction with the matching
#' color scale.
#' 
#' @param ... Additional arguments to pass to theme().
#' @examples 
#' mtcars |> 
#'   ggplot(aes(wt, mpg, color = factor(cyl))) +
#'   geom_point() +
#'   theme_dracula_light() +
#'   scale_color_dracula()
#' @export
theme_gruvbox_light <- make_light_theme(
  .template = theme_template(),
  .black = gruvbox$light("black"),
  .grey = gruvbox$light("grey"),
  .lgrey = gruvbox$light("lightgrey"),
  .white = gruvbox$light("white")
)

#' Plot themes from ggschemes
#' 
#' These are the themes exported from ggschemes. The themes themselves simply 
#' apply the colors determined by the function factory to a theme template, so if
#' you want to modify the plot theme, you are likely better off modifying the
#' underlying template, or simply adding a theme()-call to your plot to override 
#' the settings made by these themes. Best used in conjunction with the matching
#' color scale.
#' 
#' @param ... Additional arguments to pass to theme().
#' @examples 
#' mtcars |> 
#'   ggplot(aes(wt, mpg, color = factor(cyl))) +
#'   geom_point() +
#'   theme_dracula_light() +
#'   scale_color_dracula()
#' @export
theme_gruvbox_light_horizontal <- make_light_theme(
  .template = theme_template_horizontal(),
  .black = gruvbox$light("black"),
  .grey = gruvbox$light("grey"),
  .lgrey = gruvbox$light("lightgrey"),
  .white = gruvbox$light("white")
)

#' Plot themes from ggschemes
#' 
#' These are the themes exported from ggschemes. The themes themselves simply 
#' apply the colors determined by the function factory to a theme template, so if
#' you want to modify the plot theme, you are likely better off modifying the
#' underlying template, or simply adding a theme()-call to your plot to override 
#' the settings made by these themes. Best used in conjunction with the matching
#' color scale.
#' 
#' @param ... Additional arguments to pass to theme().
#' @examples 
#' mtcars |> 
#'   ggplot(aes(wt, mpg, color = factor(cyl))) +
#'   geom_point() +
#'   theme_dracula_light() +
#'   scale_color_dracula()
#' @export
theme_gruvbox_dark <- make_dark_theme(
  .template = theme_template(),
  .black = gruvbox$dark("black"),
  .grey = gruvbox$dark("grey"),
  .white = gruvbox$dark("white")
)

#' Plot themes from ggschemes
#' 
#' These are the themes exported from ggschemes. The themes themselves simply 
#' apply the colors determined by the function factory to a theme template, so if
#' you want to modify the plot theme, you are likely better off modifying the
#' underlying template, or simply adding a theme()-call to your plot to override 
#' the settings made by these themes. Best used in conjunction with the matching
#' color scale.
#' 
#' @param ... Additional arguments to pass to theme().
#' @examples 
#' mtcars |> 
#'   ggplot(aes(wt, mpg, color = factor(cyl))) +
#'   geom_point() +
#'   theme_dracula_light() +
#'   scale_color_dracula()
#' @export
theme_gruvbox_dark_horizontal <- make_dark_theme(
  .template = theme_template_horizontal(),
  .black = gruvbox$dark("black"),
  .grey = gruvbox$dark("grey"),
  .white = gruvbox$dark("white")
)
