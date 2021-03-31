#' Install and load packages
#'
#' This function allows you to install and load all your packages. Additionally
#' it is shown whether the package was loaded successfully or not.
#' @param pkg Include the packages you like to install
#' @export inst_pkg
#' @examples
#' pkg = c("ggplot2")
#' inst_pkg(pkg)

inst_pkg <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
