# Colors:
monokai_colors <- c(
  `black` = "#2e2e2e",
  `white` = "#d6d6d6", 
  `yellow` = "#e5b567",
  `green` = "#b4d273",
  `orange` = "#e87d3e",
  `purple` = "#9e86c8",
  `pink` = "#b05279",
  `blue` = "#6c99bb",
  `grey` = "#797979"
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
monokai <- make_colorscheme(monokai_colors)

# Palettes:
monokai_palettes <- list(
  `light` = monokai("yellow", "green", "orange", "purple", "pink", "blue"),
  `dark` = monokai("yellow", "green", "orange", "purple", "pink", "blue"),
  `cold` = monokai("white", "blue"),
  `warm` = monokai("yellow", "pink"),
  `rank` = monokai("pink", "green")
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
monokai_pal <- make_palette(monokai_palettes)

# Color scales:

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
scale_color_monokai <- make_color_scale(monokai_pal, "monokai_")

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
scale_fill_monokai <- make_fill_scale(monokai_pal, "monokai_")

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
theme_monokai_light <- make_light_theme(
  .template = theme_template(),
  .black = monokai("black"),
  .grey = monokai("grey"),
  .lgrey = monokai("grey"),
  .white = monokai("white")
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
theme_monokai_light_horizontal <- make_light_theme(
  .template = theme_template_horizontal(),
  .black = monokai("black"),
  .grey = monokai("grey"),
  .lgrey = monokai("grey"),
  .white = monokai("white")
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
theme_monokai_dark <- make_dark_theme(
  .template = theme_template(),
  .black = monokai("black"),
  .grey = monokai("grey"),
  .white = monokai("white")
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
theme_monokai_dark_horizontal <- make_dark_theme(
  .template = theme_template_horizontal(),
  .black = monokai("black"),
  .grey = monokai("grey"),
  .white = monokai("white")
)
