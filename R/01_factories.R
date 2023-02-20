# Various function factories used for making the color schemes.

#' Create color scheme
#' 
#' Function factory to create a function that accesses color codes from a named 
#' vector. Used to make colors from a color scheme easily accessible by name without
#' conflicting with global color names.
#' 
#' @param .colorscheme Named vector with the color hexcodes (see examples below).
#' @return A function to create color schemes.
#' @examples 
#' my_colors <- c(
#'   `black` = "#282a36",
#'   `white` = "#f8f8f2",
#'   `grey` = "#6272a4"
#' )
#' 
#' my_color <- make_colorscheme(my_colors)
#' my_color("black")
#' @export
make_colorscheme <- function (.colorscheme) {
  
  force(.colorscheme)
  
  function (...) {
    cols <- c(...)
    
    if (is.null(cols))
      return(.colorscheme)
      
    .colorscheme[cols]
  }
}

#' Create function for accessing color palettes
#' 
#' Function factory to create a function used for accessing color palettes from
#' within a named list. Used for making the palettes accessible by name without
#' conflicting with global names or other values. Makes the palettes convenient 
#' to use with ggplot2.
#' 
#' @param .palette_list Named list with the color palettes.
#' @return A function to access color palettes.
#' @examples 
#' my_palettes <- list(
#'   `light` = c("cyan", "red", "green", "orange", "pink", "purple"),
#'   `dark` = c("cyan", "green", "orange", "pink", "purple", "red", "yellow")
#' )
#' 
#' my_palette <- make_palette(my_palettes)
#' my_palette("dark")
#' @export
make_palette <- function(.palette_list) {
  
  force(.palette_list)
  
  function(palette, reverse = FALSE, ...) {
    out <- .palette_list[[palette]]
    
    if (reverse)
      out <- rev(out)
    
    colorRampPalette(out, ...)
  }
}

#' Create color scale from palette
#' 
#' Function factory to create color scales to use with a ggplot object from
#' custom palettes. Refer to the source code of ggschemes for example usage. 
#' 
#' @param .palette_fun Function to create palettes, made with make_palette().
#' @param .name_pref Name prefix for color scale (invisible, but needed for ggplot2).
#' @return A color scale function for use with ggplot objects.
#' @export
make_color_scale <- function(.palette_fun, .name_pref) {
  
  force(.palette_fun)
  force(.name_pref)
  
  function(palette = "light", discrete = TRUE, reverse = FALSE, ...) {
    
    p <- .palette_fun(palette = palette, reverse = reverse)
    
    if (discrete) {
      return(
        ggplot2::discrete_scale(
          "colour", 
          paste0(.name_pref, palette), 
          palette = p, 
          ...
        )
      )
    }
    
    ggplot2::scale_color_gradientn(colours = p(256), ...)
  }
}

#' Create fill scale from palette
#' 
#' Function factory to create fill scales to use with a ggplot object from
#' custom palettes. Refer to the source code of ggschemes for example usage. 
#' 
#' @param .palette_fun Function to create palettes, made with make_palette().
#' @param .name_pref Name prefix for color scale (invisible, but needed for ggplot2).
#' @return A fill scale for use with ggplot objects.
#' @export
make_fill_scale <- function(.palette_fun, .name_pref) {
  
  force(.palette_fun)
  
  function(palette = "light", discrete = TRUE, reverse = FALSE, ...) {
    p <- .palette_fun(palette = palette, reverse = reverse)
    
    if (discrete) {
      return(
        ggplot2::discrete_scale(
          "fill", 
          paste0(.name_pref, palette), 
          palette = p, 
          ...
        )
      )
    }
    
    ggplot2::scale_color_gradientn(colours = p(256), ...)
  }
}

