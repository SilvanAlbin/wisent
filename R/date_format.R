#' Transforming Date column
#'
#' Following function transforms the Date as class Date and creates a new
#' columns with the Date as Month and Year. This is especially handy for
#' the creation of visualization as it takes less space and avoids overlapping
#' text on the axises.
#'
#' @param df The data table
#' @param date The column indicating the date
#' @export date_format
#' @examples
#' df <- data.frame (names  = c('John Doe','Peter Gynn','Jolie Hope'),
#' date = c('2010-11-1','2008-3-25','2007-3-14'))
#' date_format(df, date)

date_format <- function(df, date) {
  df$date = as.Date(df$date)
  df$Date = format(as.Date(df$date), format = "%b %y")
}

df = date_format(df,date)
