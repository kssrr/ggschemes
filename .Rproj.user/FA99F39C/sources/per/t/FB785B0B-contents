# Colors:
dracula_colors <- c(
  `black` = "#282a36",
  `white` = "#f8f8f2",
  `grey` = "#6272a4",
  `cyan` = "#8be9fd",
  `green` = "#50fa7b",
  `orange` = "#ffb86c",
  `pink` = "#ff79c6",
  `purple` ="#bd93f9",
  `red` = "#ff5555",
  `yellow` = "#f1fa8c",
  `darkgrey` = "#44475a"
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
dracula <- make_colorscheme(dracula_colors)

# Palettes:
dracula_palettes <- list(
  `light` = dracula("cyan", "red", "green", "orange", "pink", "purple"),
  `dark` = dracula("cyan", "green", "orange", "pink", "purple", "red", "yellow"),
  `rank` = dracula("red", "yellow", "green"),
  `cold` = dracula("white", "cyan")
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
dracula_pal <- make_palette(dracula_palettes)

# Color scales:

#' Color scales for ggschemes
#' 
#' Color scales for ggschemes' color schemes and themes, to be used with ggplot
#' objects.
#' 
#' @param palette Palette to use for constructing the color scale. Defaults to "light".
#' @param discrete Logical; true means discrete scale, false means continuous scale.
#' @param reverse Logical; reverse the order of the color scale?
#' @examples
#' mtcars |> 
#'   ggplot(aes(wt, mpg, color = factor(cyl))) +
#'   geom_point() +
#'   theme_dracula_dark() +
#'   scale_color_dracula(palette = "dark")
#' mtcars |> 
#'   ggplot(aes(wt, mpg, color = wt)) +
#'   geom_point() +
#'   theme_dracula_light() +
#'   scale_color_dracula(palette = "rank", discrete = FALSE, reverse = TRUE)
#' @export
scale_color_dracula <- make_color_scale(dracula_pal, "dracula_")

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
scale_fill_dracula <- make_fill_scale(dracula_pal, "dracula_")

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
theme_dracula_light <- make_light_theme(
  .template = theme_template(),
  .black = dracula("black"),
  .grey = dracula("darkgrey"),
  .lgrey = dracula("grey"),
  .white = dracula("white")
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
theme_dracula_light_horizontal <- make_light_theme(
  .template = theme_template_horizontal(),
  .black = dracula("black"),
  .grey = dracula("darkgrey"),
  .lgrey = dracula("grey"),
  .white = dracula("white")
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
theme_dracula_dark <- make_dark_theme(
  .template = theme_template(),
  .black = dracula("black"),
  .grey = dracula("grey"),
  .white = dracula("white")
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
theme_dracula_dark_horizontal <- make_dark_theme(
  .template = theme_template_horizontal(),
  .black = dracula("black"),
  .grey = dracula("grey"),
  .white = dracula("white")
)
