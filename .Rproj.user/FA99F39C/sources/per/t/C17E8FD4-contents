
#' Template for creating ggplot themes
#' 
#' This is a theme template used for creating themes within ggschemes. It is similar
#' to theme_minimal().
#' 
#' @param ... Additional arguments to pass to theme().
#' @export
theme_template <- function(...) {
  theme(
    plot.title = element_text(face = "bold"),
    plot.subtitle = element_text(face = "italic", margin = margin(0, 0,20, 0)),
    axis.ticks = element_line(size = 1),
    axis.line = element_line(linetype = 1, size = 1),
    legend.background = element_rect(fill = NULL, color = NA),
    legend.key = element_blank(),
    panel.border = element_blank(),
    panel.grid = element_line(size = 0.1),
    plot.background = element_rect(
      fill = NULL, 
      colour = NA,
      linetype = 0
    ),
    ...
  )
}

#' Template for creating ggplot themes
#' 
#' This is a theme template used for creating themes within ggschemes. This template
#' emphasizes the horizontal gridlines. 
#' 
#' @param ... Additional arguments to pass to theme().
#' @export
theme_template_horizontal <- function(...) {
  theme(
    plot.title = element_text(face = "bold"),
    plot.subtitle = element_text(face = "italic", margin = margin(0, 0,20, 0)),
    axis.ticks = element_blank(),
    axis.line.y = element_blank(),
    axis.line.x = element_line(linetype = 1, size = 1),
    legend.background = element_rect(fill = NULL, color = NA),
    legend.key = element_blank(),
    panel.border = element_blank(),
    panel.grid.major.x = element_blank(),
    panel.grid.major.y = element_line(linetype = 1, size = 0.3),
    panel.grid.minor.x = element_blank(),
    panel.grid.minor.y = element_line(linetype = 3),
    plot.background = element_rect(fill = NULL, colour = NA, linetype = 0),
    ...
  )
}
