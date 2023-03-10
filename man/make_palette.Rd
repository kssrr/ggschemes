% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/01_factories.R
\name{make_palette}
\alias{make_palette}
\title{Create function for accessing color palettes}
\usage{
make_palette(.palette_list)
}
\arguments{
\item{.palette_list}{Named list with the color palettes.}
}
\value{
A function to access color palettes.
}
\description{
Function factory to create a function used for accessing color palettes from
within a named list. Used for making the palettes accessible by name without
conflicting with global names or other values. Makes the palettes convenient 
to use with ggplot2.
}
\examples{
my_palettes <- list(
  `light` = c("cyan", "red", "green", "orange", "pink", "purple"),
  `dark` = c("cyan", "green", "orange", "pink", "purple", "red", "yellow")
)

my_palette <- make_palette(my_palettes)
my_palette("dark")
}
