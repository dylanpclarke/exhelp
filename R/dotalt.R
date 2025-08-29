#' dotalt
#'
#' This function takes a vector and a label and makes a rudimentary dot plot.
#'
#' @param x A vector values
#' @param label A character name of the vector
#'
#' @examples
#'
#' data <- c(1,2,3,3,3,1)
#' dotalt(data,"Cases")
#'
#'
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

dots <- function(x){
  k = length(x)
  x1 = x
  for(i in 1:k){
    j = x[i]
    x1[i] = sum(x[1:i] == j)
  }
  return(x1)
}

dotalt <- function(x,label = ""){
  plot(y = dots(x),x = x,ylab = "Count",xlab = label)
}
