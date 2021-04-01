#' Install and load packages
#'
#' This function allows you to install and load all your packages. Additionally
#' it is shown whether the package was loaded successfully or not.
#' @param df,date Change the date format
#' @export date_format
#' @examples
#' df = some data
#' inst_pkg(df, date)

date_format <- function(df, date) {
  
}

df2$Date <- format(as.Date(df2$date), format = "%b %y")

df2$date = as.Date(df2$date)