#' Transforming Date column
#'
#' Following function transforms the Date as class Date and creates a new
#' columns with the Date as Month and Year. This is especially handy for
#' the creation of visualization as it takes less space and avoids overlapping
#' text on the axes.
#'
#' @param df The data table
#' @param date The column indicating the date
#' @name date_format
#' @export date_format
#' @examples
#' date_format(df, date)

load(file = "data/df.rda")

date_format <- function(df, date) {
  df$date = as.Date(df$date)
  Date = format(as.Date(df$date), format = "%b %y")
  data_frame = cbind(df, Date)
  return(data_frame)
}
