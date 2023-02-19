library(ggplot2)

#' Create a light ggplot theme from a template
#' 
#' This function factory is used to create a light ggplot theme from a template
#' giving some colors which are used for the background, text, axes and grid lines.
#' 
#' @param .template Function template to use.
#' @param .black Black color code.
#' @param .grey Grey color code.
#' @param .lgrey Light grey color code.
#' @param .white White color code.
#' @param ... Additional arguments to pass to theme().
#' @export
make_light_theme <- function(.template, .black, .grey, .lgrey, .white, ...) {
  
  force(.template)
  
  force(.black)
  force(.grey)
  force(.lgrey)
  force(.white)
  
  function(...) {
    .template + theme(
      text = element_text(colour = .black),
      plot.title = element_text(color = .black),
      plot.subtitle = element_text(color = .black),
      line = element_line(color = .black),
      rect = element_rect(
        fill = .white,
        color = .grey
      ),
      axis.ticks = element_line(color = .grey),
      axis.line = element_line(color = .grey),
      legend.key = element_blank(),
      panel.background = element_rect(
        fill = .white,
        colour = .white
      ),
      panel.border = element_blank(),
      panel.grid = element_line(color = .lgrey),
      panel.grid.major = element_line(color = .lgrey),
      panel.grid.minor = element_line(color = .lgrey),
      ...
    )
  }
}

#' Create a dark ggplot theme from a template
#' 
#' This function factory is used to create a dark ggplot theme from a template
#' giving some colors which are used for the background, text, axes and grid lines.
#' 
#' @param .template Function template to use.
#' @param .black Black color code.
#' @param .grey Grey color code.
#' @param .white White color code.
#' @param ... Additional arguments to pass to theme().
#' @export
make_dark_theme <- function(.template, .black, .grey, .white) {
  
  force(.template)
  
  force(.black)
  force(.grey)
  force(.white)
  
  function(...) {
    .template + theme(
      text = element_text(colour = .white),
      plot.title = element_text(color = .white),
      plot.subtitle = element_text(color = .white),
      line = element_line(color = .white),
      rect = element_rect(
        fill = .black,
        color = .grey
      ),
      axis.title = element_text(color = .grey),
      axis.ticks = element_blank(),
      axis.text = element_text(color = .grey),
      axis.line.y = element_line(color = .grey),
      axis.line.x = element_line(color = .grey),
      legend.title = element_text(color = .grey),
      legend.text = element_text(color = .grey),
      panel.background = element_rect(
        fill = .black,
        colour = .black
      ),
      panel.border = element_blank(),
      panel.grid = element_line(color = .grey),
      panel.grid.major.x = element_blank(),
      panel.grid.major.y = element_line(color = .grey),
      panel.grid.minor.y = element_line(color = .grey),
      ...
    )
  }
}
